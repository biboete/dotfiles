<#
.SYNOPSIS
  Restart Zebar to apply a new theme WITHOUT leaking its taskbar (AppBar) reservation.

  Zebar reserves screen space via the Windows AppBar API. It ignores a graceful close
  (tray app), and Windows purges a dead process's AppBar reservation only lazily, so a
  plain force-kill makes the bar "creep" downward a little on every theme switch.

  This captures Zebar's window handle BEFORE killing it, force-kills it, then calls
  SHAppBarMessage(ABM_REMOVE) on that handle to release the reservation immediately, and
  finally relaunches Zebar through GlazeWM so the new bar reserves exactly one slot and
  stays connected to the WM (workspace widget).
#>
Add-Type @"
using System;
using System.Runtime.InteropServices;
public class ZebarBar {
  [StructLayout(LayoutKind.Sequential)] public struct RECT { public int left, top, right, bottom; }
  [StructLayout(LayoutKind.Sequential)] public struct APPBARDATA {
    public int cbSize; public IntPtr hWnd; public uint uCallbackMessage; public uint uEdge; public RECT rc; public IntPtr lParam;
  }
  [DllImport("shell32.dll")] public static extern IntPtr SHAppBarMessage(uint dwMessage, ref APPBARDATA pData);
}
"@

$handles = Get-Process zebar -ErrorAction SilentlyContinue | ForEach-Object { $_.MainWindowHandle } | Where-Object { $_ -ne 0 }
Stop-Process -Name zebar -Force -ErrorAction SilentlyContinue
Start-Sleep -Milliseconds 800
foreach ($h in $handles) {
  $d = New-Object ZebarBar+APPBARDATA
  $d.cbSize = [Runtime.InteropServices.Marshal]::SizeOf($d)
  $d.hWnd = $h
  [void][ZebarBar]::SHAppBarMessage(1, [ref]$d)   # ABM_REMOVE = 0x00000001
}
& 'C:\Program Files\glzr.io\GlazeWM\cli\glazewm.exe' command shell-exec zebar | Out-Null
