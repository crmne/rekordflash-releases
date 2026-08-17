#ifndef AppVersion
  #error AppVersion must be defined on the ISCC command line
#endif
#ifndef ReleaseTag
  #error ReleaseTag must be defined on the ISCC command line
#endif
#ifndef SourceDir
  #error SourceDir must be defined on the ISCC command line
#endif
#ifndef OutputDir
  #error OutputDir must be defined on the ISCC command line
#endif

#define AppName "RekordFlash"
#define AppExeName "rekordflash.exe"

[Setup]
AppId={{A5C23843-3D38-44FF-98F6-C656C74E91CD}
AppName={#AppName}
AppVersion={#AppVersion}
AppVerName={#AppName} {#AppVersion}
AppPublisher=RekordFlash
AppPublisherURL=https://github.com/crmne/rekordflash-releases
AppSupportURL=https://github.com/crmne/rekordflash-releases/issues
AppUpdatesURL=https://github.com/crmne/rekordflash-releases/releases
DefaultDirName={localappdata}\Programs\{#AppName}
DefaultGroupName={#AppName}
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
ArchitecturesAllowed=x64compatible
ArchitecturesInstallIn64BitMode=x64compatible
MinVersion=10.0
LicenseFile={#SourceDir}\LICENSE
OutputDir={#OutputDir}
OutputBaseFilename=rekordflash-{#ReleaseTag}-windows-x86_64-setup
Compression=lzma2/max
SolidCompression=yes
WizardStyle=modern
CloseApplications=yes
RestartApplications=no
UninstallDisplayIcon={app}\{#AppExeName}
VersionInfoVersion={#AppVersion}.0

[Tasks]
Name: "desktopicon"; Description: "Create a desktop shortcut"; GroupDescription: "Additional shortcuts:"; Flags: unchecked

[Files]
Source: "{#SourceDir}\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs

[Icons]
Name: "{autoprograms}\{#AppName}"; Filename: "{app}\{#AppExeName}"
Name: "{autodesktop}\{#AppName}"; Filename: "{app}\{#AppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#AppExeName}"; Description: "Launch {#AppName}"; Flags: nowait postinstall skipifsilent
