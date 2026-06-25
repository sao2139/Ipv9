[Setup]
AppName=IPv9 Shield
AppVersion=3.0
AppPublisher=S40
DefaultDirName={autopf}\IPv9 Shield
DefaultGroupName=IPv9 Shield
OutputDir=.
OutputBaseFilename=IPv9_Shield_Installer
Compression=lzma2/ultra64
SolidCompression=yes
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64
CloseApplications=yes
RestartApplications=no

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"; InfoBeforeFile: "readme_en.txt"
Name: "spanish"; MessagesFile: "compiler:Languages\Spanish.isl"; InfoBeforeFile: "readme_es.txt"

[Files]
Source: "ipv9_go_router\ipv9_shield.exe"; DestDir: "{app}"; Flags: ignoreversion
; Include WebView2 bootstrapper if needed, or assume Windows 11 has it built-in.
; For this MVP, we assume WebView2 is present as it's standard on modern Windows.

[Icons]
Name: "{group}\IPv9 Shield"; Filename: "{app}\ipv9_shield.exe"
Name: "{autodesktop}\IPv9 Shield"; Filename: "{app}\ipv9_shield.exe"; Tasks: desktopicon

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Run]
Filename: "{app}\ipv9_shield.exe"; Description: "Launch IPv9 Shield"; Flags: nowait postinstall skipifsilent shellexec
