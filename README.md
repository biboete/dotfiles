# 🍙 My Ricing Dotfiles for Windows 11

Yes it's **Windows**

![GitHub Release](https://img.shields.io/github/v/release/jade-tam/dotfiles)
![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/jade-tam/dotfiles/changeset-versioning.yml)
![GitHub License](https://img.shields.io/github/license/jade-tam/dotfiles)
![Discord](https://img.shields.io/discord/1162030825290866698)

---

<!--
I haven't have time to correctly refine this so I'll leave it commented for a while
## 📑 Table of Contents

1. [Introduction](#introduction)
   - 1.1 [Native Shell Scripting — No WSL, No Virtualization](#-native-shell-scripting--no-wsl-no-virtualization)
   - 1.2 [For the Ricing and Unixporn Enthusiasts](#️-for-the-ricing-and-unixporn-enthusiasts)
   - 1.3 [Custom Themes and Configurations](#️-custom-themes-and-configurations)
   - 1.4 [Instant Theme Switching](#-instant-theme-switching)
   - 1.5 [Transform Your Windows Experience](#-transform-your-windows-experience)
2. [Themes](#-themes)
   - 2.1 [Jade](#jade)
   - 2.2 [Wasabi](#wasabi)
   - 2.3 [Aqua](#aqua)
   - 2.4 [Shuri](#shuri)
3. [Dependency and Configuration](#dependency-and-configuration)
   - 3.1 [Core Dependencies](#core-dependencies)
   - 3.2 [Current Configurable Settings](#current-configurable-settings)
4. [Installation Guide](#installation-guide)
   - 4.x [Testing](#testing)
   - 4.0 [Pre-install notices](#pre-install-notices)
   - 4.1 [Install Fonts](#install-fonts)
   - 4.2 [Install chezmoi and apply dotfiles](#install-chezmoi-and-apply-dotfiles)
   - 4.3 [Install packages](#install-packages)
   - 4.4 [Add New Environment Variables](#add-new-environment-variables)
   - 4.5 [Restarting your system](#restart)
   - 4.6 [Change MSYS2 home directory](#change-msys2-home-directory)
   - 4.7 [Install Zsh](#install-zsh)
   - 4.8 [Install VS Code Extensions for Theming](#install-vs-code-extensions-for-theming)
   - 4.9 [Auto start GlazeWM & Zebar at windows start](#auto-start-glazewm--zebar-at-windows-start)
5. [Basic usage](#-basic-usage)
    - 5.1 [Change theme](#change-theme)
    - 5.2 [Change wallpaper](#change-wallpaper)
    - 5.3 [Useful keybindings](#useful-keybindings)
6. [Optional Tweaks](#optional-tweaks)

--- -->

## Introduction

### 🐚 Native Shell Scripting — No WSL, No Virtualization

Run real **shell scripts** and **Linux commands** natively on Windows — no WSL, no virtualization, no nonsense. With this setup, you get the full power of Unix-like scripting without sacrificing compatibility.

Why write PowerShell when you can use familiar `.sh` scripts? And if you still need PowerShell? You can run both side by side. It's like having the best of both worlds — the flexibility of Linux with the accessibility of Windows.

### ❤️ For the Ricing and Unixporn Enthusiasts

Are you **a ricing nerd** or **a unixporn enthusiast** who has to use Windows but still misses the customizability of Linux? Look no further! This repository is a treasure trove of my ricing dotfiles tailored specifically for Windows.

### ⚙️ Custom Themes and Configurations

It includes a variety of custom themes, scripts, and configurations designed to bring the same level of aesthetic appeal and functionality to your Windows desktop that you love from your Linux setups.

### ⚡ Instant Theme Switching

Easily switch themes on the fly with just one press. Keep your desktop fresh and aligned with your mood or preferences instantly and effortlessly.

### 😍 Transform Your Windows Experience

Dive in, tweak to your heart's content, and transform your Windows environment into a beautifully riced masterpiece!

<figure>
  <img width="2559" height="1599" alt="Screenshot 2026-04-06 204530" src="https://github.com/user-attachments/assets/c1e16424-8707-43b7-a324-97142113a432" />
  <figcaption align="center"><b>Screenshot: Working with multiple terminal windows including Claude Code.</b></figcaption>
</figure>

---

## 🎨 Themes

ℹ️Note: This dotfiles is configured for 2560x1600 resolution + 125% windows display scale (like the previews below), so it might looks nearly the same as 1920x1200 at 100% scale, everything might look bigger on lower resolution. I suggest using my dotfiles as a base and customizing it to fit your specific needs.

|                            ❤️ jade ❤️                             |
| :------------------------------------------------------------: |
| Introspective and layered, a soul with raw edges, nostalgic warmth, and unspoken strength |
|              ![jade-1](rice-previews/jade-1.png)               |
|              ![jade-2](rice-previews/jade-2.png)               |

|                ❤️ wasabi ❤️                |
| :-------------------------------------: |
|         Mysterious and alluring, with eyes like deep ocean blue and an aura of fire, she exudes both danger and enchantment         |
| ![wasabi-1](rice-previews/wasabi-1.png) |
| ![wasabi-2](rice-previews/wasabi-2.png) |

|               ❤️ aqua ❤️              |
| :---------------------------------: |
|     A playful, mysterious girl with eyes like shimmering aqua, her movements graceful and quick, full of curiosity and charm     |
| ![aqua-1](rice-previews/aqua-1.png) |
| ![aqua-2](rice-previews/aqua-2.png) |

|               ❤️ shuri ❤️               |
| :-----------------------------------: |
| A gentle presence in shades of purple, like twilight’s soft embrace—quietly comforting, effortlessly lovely |
| ![shuri-1](rice-previews/shuri-1.png) |
| ![shuri-2](rice-previews/shuri-2.png) |

|               ❤️ tlinh ❤️               |
| :-----------------------------------: |
| Vibrant and dynamic, with rich colors and bold accents, she radiates energy and sophisticated elegance |
| <img width="2555" height="1598" alt="tlinh screenshot 1" src="https://github.com/user-attachments/assets/9715c20b-8c37-4df5-977a-80ff13bf0ba0" /> |
| <img width="2558" height="1598" alt="tlinh screenshot 2" src="https://github.com/user-attachments/assets/3defca09-7ae1-4be8-9235-c9bc47111c96" /> |


<!--
| 🕹️ arcade |
| :---: |
| ⚠️ WARNING! Only For Truest Gamer!! May hurt your eyes!!! |
|![arcade-1](rice-previews/arcade-1.png)|
|![arcade-2](rice-previews/arcade-2.png)|

| ✨ khanhoa |
| :---: |
| Joyful and adventurous |
|![khanhoa-1](rice-previews/khanhoa-1.png)|
|![khanhoa-2](rice-previews/khanhoa-2.png)|

| ✨ khlinh |
| :---: |
| Gentle and wise, truly exceptional |
|![khlinh-1](rice-previews/khlinh-1.png)|
|![khlinh-2](rice-previews/khlinh-2.png)|

| 💜 shuri |
| :---: |
| Radiant love for purple, deeply cherished soul, mah lovely queen 👑 |
|![shuri-1](rice-previews/shuri-1.png)|
|![shuri-2](rice-previews/shuri-2.png)| -->

---

## Dependency and Configuration

### Core Dependencies

> ℹ️ INFO ℹ️: This project comes with a script to install all the dependencies listed below automatically. See [this](scripts/install-packages.ps1) for the dependency installation script.

- Terminal: **Windows Terminal**
- Shell: **Zsh** inside MSYS2
- Tiling Window Manager: **GlazeWM 3.10.1**
- Bar: **Zebar 3.3.1**
- Package manager: **Winget**
- Dotfiles manager: **Chezmoi**

### Current Configurable Settings

You can customize each theme inside `~/.rice-manager/rices` and re-apply it (see **Change theme** below)

- ☑️ Windows Terminal theme
- ☑️ GlazeWM border theme
- ☑️ Status bar (Zebar) theme
- ☑️ Desktop wallpaper based on rice
- ☑️ VS Code theme
- ~~☑️ Windows light/dark mode based on rice~~ ❌ Disabled - currently unstable and buggy
- ❓ Windows color based on rice
- 🚧 _under construction_

---

## Installation Guide (last tested 19/01/2026, follow below video)

<!-- ### Testing

- This project has been officially tested and works 100% (as of 19/1/2026) by the author. -->

<!--
To the owner of the repository
Feel free to uncomment the section down below to display my testing environment details in the README.

If you don't want to display it, feel free to just leave it commented out(or delete it entirely).
 -->

<!-- This project has been unoffically tested by Neko and partially works(as of 21/10/2025)
  - Windows 11 Home Single Language 25H2(26200.6901)
  - Laptop: ASUS TUF Gaming A15
    - CPU: AMD Ryzen 7435HS
    - GPU: NVIDIA GeForce RTX 3050 Laptop GPU
    - RAM: 16GB DDR5
    - Screen: 1920x1080 @ 144Hz
  - Software versions:
    - Winget: v1.11.510
    - Windows Terminal: v1.23.12811.0

  - Experienced Issues:
    - Tiling is not working properly, applications like Web Browsers(Floorp) are either fullscreened or minimized
    - Alt+Tab is broken for the above
    - Common executables like run, or even properties of a file/folder are opened behind the current explorer window -->

### 🔥 Step By Step Installation Video ⭐

**[View Installation Video](https://www.youtube.com/watch?v=7uYbdCsaLSc)**

### 0️⃣ Pre-install notices

- Follow my video above if you stuck somewhere, if you're still having problem, feel free to message me on my Discord.
- This dotfiles is configured for 2560x1600 resolution + 125% windows display scale, so it might looks nearly the same as 1920x1200 at 100% scale (like the previews), everything might look bigger on lower resolution.
- Those installation steps won't break your windows, in case things didn't go well, all you need to do are:
  - `winget uninstall ...` all packages you have installed through `install-packages.ps1`
  - Remove added task scheduler tasks
  - Remove added config files in `~/.config`
- If you have just fresh install windows 11 and your winget command is not working, you need to go to Microsoft Store and update your "App Installer" (current windows version doesn't seems to have this issue anymore).
- For those who use another windows 11 version (like IOT Enterprise LTSC, which doesn't come with Winget by default):
  - First download the latest version of Winget: <https://aka.ms/getwinget>
  - Then open PowerShell and run: `Add-AppxPackage -Path <path to downloaded .msixbundle>` to install Winget

### 1️⃣ Install Fonts

Those fonts are used by all the themes, they need to be download and install manually:

- [Pixelcraft Nerd Font](https://github.com/jade-tam/Pixelcraft/releases) (please download and use Nerd Font version)
- [Pixel Code](https://qwerasd205.github.io/PixelCode/)
- [Monofur Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/Monofur.zip)
- [Space Mono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/SpaceMono.zip)
- [DepartureMono Nerd Font](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/DepartureMono.zip) (used by tlinh theme)

### 2️⃣ Install chezmoi and apply dotfiles

- Install chezmoi from Winget with: `winget install chezmoi`
- Close and reopen terminal for chezmoi command to be recognized.
- Initialize chezmoi and apply the dotfiles with: `chezmoi init --apply jade-tam` (This might take a while without any progession showing, please wait especially if your internet is slow)
- If you are using Windows Terminal, you will notice the terminal theme changed after that.

### 3️⃣ Install packages

- After chezmoi apply the dotfiles, the chezmoi source folder could be found in `%userprofile%/.local/share/chezmoi`, `install-packages.ps1` file can be found inside `scripts` folder (⚠️ Note: Windows Terminal is now default open zsh shell which we haven't installed yet so it will show error if you try to open Windows Terminal, let's open Windows PowerShell instead)
- Enable allow execute PowerShell script in windows settings:
  ![image](https://github.com/user-attachments/assets/2b9c84f2-56d5-46f6-8ced-6e030ca5e47a)
  ![image](https://github.com/user-attachments/assets/70a6666e-b4ff-4f03-8299-4fd5acb12797)
- Edit `install-packages.ps1`, comment out packages/apps that are not needed (All non-required packages are commented by default)
- ⚠️ Note: If glazewm or zebar already installed, please uninstall them first before running the install script, this will make sure the versions are correct.
- Run `install-packages.ps1` script with **PowerShell** to install necessary packages (⚠️ Note: sometime installation could fail, re-run the script to ensure all packages has been installed)

### 4️⃣ Add New Environment Variables

- Add `%USERPROFILE%\.local\bin` to **Path** variable (This is needed for some utilities like btop, colorscript and winfetch to be recognize):
  - ![image](https://github.com/user-attachments/assets/dd3884e0-47f0-4699-85c4-bd5f5114cd94)
  - ![image](https://github.com/user-attachments/assets/3ebc5056-5350-4f5f-b36e-144808a6a1e4)
  - ![image](https://github.com/user-attachments/assets/4ec1d277-7f2c-4592-846a-620770236620)
  - ![image](https://github.com/user-attachments/assets/41e70542-485c-4035-9169-bc0e6a8a9afb)

### 5️⃣ Restart

- After everything above are done, restart the PC one time to make sure all new program paths and fonts are registered.

---

_🚩 Continue below after MSYS2 has been installed through install-packages.ps1 and you have restarted the pc_

---

### 6️⃣ Change MSYS2 home directory

Edit the "db_home"'s value to "windows" of file /c/msys64/etc/nsswitch.conf (file nsswitch.conf inside C:\msys64\etc)

```
db_home: windows
```

This will set windows user folder as default home directory. Otherwise zsh won't see it config file from user's directory.

### 7️⃣ Install Zsh

Open **MSYS2 UCRT64** and run below command to install zsh (Tips: command can be pasted using middle mouse button)

```
# Update pacman
pacman -Syu

# Open MSYS2 Ucrt64 and install ZSH
pacman -S zsh

```

Open **PowerShell**, from your user folder (Example: `C:\Users\JadeTam>`, which you have to use `cd ~` to move there), run below command to install zsh themes and configs

**Troubleshoot:** If git is not recognizable, try close and reopen PowerShell or check whether git is installed through running `install-packages.ps1` or not.

### 8️⃣ Install VS Code Extensions for Theming

- Icons: [Material Icon Theme](https://marketplace.visualstudio.com/items?itemName=PKief.material-icon-theme) - _best icon pack in my opinion_
- Themes:
  - [Tinted VSCode](https://marketplace.visualstudio.com/items?itemName=TintedTheming.base16-tinted-themes) - _used by other themes_
  - [Gruvbox Theme](https://marketplace.visualstudio.com/items?itemName=jdinhlife.gruvbox) - _used by Wasabi theme_
  - [Everforest](https://marketplace.visualstudio.com/items?itemName=sainnhe.everforest) - _used by Jade theme_
  - [Monokai Pro](https://marketplace.visualstudio.com/items?itemName=monokai.theme-monokai-pro-vscode) - _used by Tlinh theme_
- ADDITIONAL:
  - To change vscode UI Font, use this extension: [Fonted](https://marketplace.visualstudio.com/items?itemName=degreat.fonted)
  - To make VSCode window transparent: <https://marketplace.visualstudio.com/items?itemName=s-nlf-fh.glassit>

### 9️⃣ Auto start GlazeWM & Zebar at windows start

- Just need to copy the GlazeWM shortcut.
- Open Start Up folder by pressing **Windows + R** and type in `shell:startup`
- Paste the shortcut in here and we are done, you can also run GlazeWM now.
- Zebar is open and close with GlazeWM so you don't have to worry about it.

---

## 📑 Basic usage

> ⚠️ ATTENTION ⚠️
> This section assumes you have followed the installation steps above and everything is working properly

### Change theme

- From terminal use command: `rice <theme-name>` (example: `rice aqua`)
- Wallpaper is selected randomize from rice's wallpaper folder.
- Use `rice` for helps.

### Change wallpaper

- From terminal use command: `wallpaper <theme-name>` (example: `wallpaper aqua`)
- This will change the wallpaper only, allow you to use wallpaper from other themes.
- Wallpaper is selected randomize from selected rice's wallpaper folder.

### Useful keybindings

| Keys                                                                        | Action                                              |
| :-------------------------------------------------------------------------- | :-------------------------------------------------- |
| <kbd>alt</kbd> + <kbd>enter</kbd>                                           | Open terminal                                       |
| <kbd>alt</kbd> + <kbd>Space</kbd>                                           | Open Powertoys Run                                  |
| <kbd>alt</kbd> + <kbd>h\|j\|k\|l</kbd>                                      | Focus window left \| bottom \| top \| right         |
| <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>h\|j\|k\|l</kbd>                   | Move focusing window left \| bottom \| top \| right |
| <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>q</kbd>                            | Close focusing window                               |
| <kbd>alt</kbd> + <kbd>1\|2\|3\|4\|5\|6\|7\|8\|9\|0</kbd>                    | Focus workspace {n}                                 |
| <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>1\|2\|3\|4\|5\|6\|7\|8\|9\|0</kbd> | Move focusing window to workspace {n}               |
| <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>r</kbd>                            | Reload glazewm config                               |
| <kbd>alt</kbd> + <kbd>shift</kbd> + <kbd>e</kbd>                            | Exit glazewm                                        |

ℹ️ More keybinding can be found [here](https://github.com/glzr-io/glazewm/blob/main/resources/assets/cheatsheet.png)

---

## Optional Tweaks

- Enable automatically hide the taskbar (for more vertical space).
- Improve performance and reduce disk utilization for systems with high amount of free RAM:
  - Run `scripts/high-ram-tuning.ps1` with **Powershell**.
- Restore old context menu (Require restart):
  - Open/Run `scripts/Restore-old-context-menu.reg`.
  <!-- - Fix terminal cursor glitching while typing: (This is only working with Alacritty, current version using Windows Terminal)
  - Run `scripts/terminal-cursor-fix.sh`
  - Close then re-open terminal
  -->
- Show 'Max cpu freq' in power plan setting, allow changing maximum cpu freqency to attempt lower temperature and more stable machine **(Very useful, highly recommend for laptop)**:

  - Run `scripts/show-cpu-frequency-power-plan-setting.ps1` with **Powershell**
  - Search for **"Edit Power Plan" > Change Plan Settings > Change advanced power settings > Processor power management > Maximum processor frequency** (Showing after running the script, change this to preferred frequency)

### Other information

- Dotfiles inspired by gh0stzk dotfiles: <https://github.com/gh0stzk/dotfiles>
- Food script by Xero: <https://github.com/xero/dotfiles>

---
