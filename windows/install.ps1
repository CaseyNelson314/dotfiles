# シンボリックリンク張り芸人は管理者権限が必要です

$source = "$HOME\dotfiles\windows\git-prompt.sh"
$target = "C:\Program Files\Git\etc\profile.d\git-prompt.sh"

# ディレクトリがなければ作成
New-Item -ItemType Directory -Path "$HOME\.config\git" -Force

# シンボリックリンクを作成（既存のリンクがあっても上書き）
New-Item -ItemType SymbolicLink -Path $target -Target $source -Force
