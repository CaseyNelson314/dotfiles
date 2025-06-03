# 窓用インストーラ


# qttabbar
# http://qttabbar-ja.wikidot.com/qttabbar
Invoke-WebRequest -Uri http://qttabbar-ja.wdfiles.com/local--files/qttabbar/QTTabBar%202048%20Beta2.zip -OutFile ./qttabber.zip
Expand-Archive -Path .\qttabber.zip -DestinationPath .\qttabber
Start-Process -FilePath .\qttabber\QTTabBar.exe


# chocolatey
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$choco_packages = @(
    "microsoft-windows-terminal",
    "git",
    "vscode",
    "github-cli",
    "arduino-cli",
    "arduino",
    "qemu",
    "docker-desktop",
    "doxygen.install",
    "neovim",
    "cmake",
    "nodejs-lts",
    "oraclejdk",
    "llvm",
    "wireshark",
    "dotnet-9.0-runtime",
    "hugo-extended",
    "curl",
    "googlechrome",
    "microsoft-edge",
    "office365business",
    "deepl",
    "discord",
    "cloudflare-warp",
    "zoom",
    "dropbox",
    "obs-studio",
    "notion",
    "figma",
    "drawio",
    "spotify"
)

foreach ($package in $choco_packages) {
    choco install $package -y
}

# # 開発系
# winget install Microsoft.WindowsTerminal
# winget install Git.Git
# winget install Microsoft.VisualStudioCode
# winget install Microsoft.VisualStudio.2022.Community
# winget install GitHub.cli	
# winget install Bambulab.Bambustudio
# winget install ArduinoSA.CLI
# winget install ArduinoSA.IDE.stable
# winget install SoftwareFreedomConservancy.QEMU
# winget install Docker.DockerDesktop
# winget install DimitriVanHeesch.Doxygen
# winget install Neovim.Neovim
# winget install Kitware.CMake
# winget install "Node.js LTS"
# winget install Oracle.JDK.17
# winget install LLVM.LLVM
# winget install WiresharkFoundation.Wireshark
# winget install Microsoft.DotNet.Runtime.9
# winget install Hugo.Hugo.Extended
# winget install cURL.cURL


# # ユーティリティ系
# winget install Google.Chrome
# winget install Google.ChromeRemoteDesktop
# winget install Microsoft.Edge
# winget install Microsoft.Office
# winget install DeepL.DeepL
# winget install Discord.Discord
# winget install Cloudflare.Warp
# winget install Zoom.Zoom
# winget install Dropbox.Dropbox
# winget install OBSProject.OBSStudio
# winget install Notion.Notion
# winget install Figma.Figma
# winget install JGraph.Draw
# winget install Spotify.Spotify


# WSL
wsl --install
