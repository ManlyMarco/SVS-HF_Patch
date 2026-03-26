; Copyright (C) 2020  ManlyMarco
; This program is free software: you can redistribute it and/or modify
; it under the terms of the GNU General Public License as published by
; the Free Software Foundation, either version 3 of the License, or
; (at your option) any later version.

;-------------Full game name for naming patch itself and desktop icons
#define NAME "Summer Vacation! Scramble"
;---------------------------------------------Current HF Patch version
#define VERSION "1.12"
;-----------------------------------------Sideloader modpack directory
;#define GameDir N/A
;--Don't include any files in the build to make it go fast for testing
;#define DEBUG
;---Skip file verification for easier testing, COMMENT OUT FOR RELEASE
;#define NOVERIFY
;------------Don't include general, studio and map sideloader modpacks
;#define LITE
;--------------------------------------------------------Configuration
; The main executable name without the .exe
#define GameName "SamabakeScramble"
; Set to empty if the game has no steam version
#define GameNameSteam "SamabakeScramble"
; Set CompanyName to empty if the game has no registry keys
#define CompanyName "ILLGAMES"
;---------------------------------------------------------------------
#include "HelperLib\Common.iss"
;---------------------------------------------------------------------
; Used for post install run links, comment out to hide
#define WikiLink "https://wiki.anime-sharing.com/hgames/index.php?title=Summer_Vacation!_Scramble"
#define RepoLink "https://github.com/ManlyMarco/SVS-HF_Patch"
; Can be KoiDiscordLink, IsDiscordLink, or a normal link
#define DiscordLink KoiDiscordLink
;---------------------------------------------------------------------

[Setup]
#ifndef LITE
AppName=HF Patch for SamabakeScramble
OutputBaseFilename=SamabakeScramble HF Patch v{#VERSION}
#else
AppName=HF Patch for SamabakeScramble (Light Version)
OutputBaseFilename=SamabakeScramble HF Patch v{#VERSION} Light Version
#endif

;lzma2/ultra64 | zip | lzma2/fast
Compression=lzma2/ultra64
LZMAUseSeparateProcess=yes
;Usual settings: 208576 273
LZMADictionarySize=208576
LZMANumFastBytes=273
LZMANumBlockThreads=16
DiskSpanning=yes
DiskSliceSize=4294967295

[Languages]
Name: "en"; MessagesFile: "compiler:Default.isl"
Name: "jp"; MessagesFile: "compiler:Languages\Japanese.isl"

[Types]
Name: "full_en";  Description: "{cm:fullInstall}"; Languages: en;
Name: "full";     Description: "{cm:fullInstall}";  Languages: jp;
Name: "extra_en"; Description: "{cm:extraInstall}"; Languages: en;
Name: "extra";    Description: "{cm:extraInstall}"; Languages: jp;
Name: "bare";     Description: "{cm:bareInstall}"
Name: "none";     Description: "{cm:noneInstall}"
Name: "custom";   Description: "{cm:customInstall}"; Flags: iscustom

[Components]
Name: "Patch";		Description: "All free updates and common issue repair; unlock Steam ver."; 	Types: full_en full extra_en extra custom bare none; Flags: fixed
;Name: "Patch\VR";	Description: "Install/Update VR Module"; 					Types: extra_en extra
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

[Files]
#ifndef DEBUG
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_Patch\1_base\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: Patch; Check: not IsSteam
Source: "Input\_Patch\2_1009-full\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Check: not IsSteam
Source: "Input\_Patch\8_man\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Check: not IsSteam
Source: "Input\_Patch\9_unhollowed-1009\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Check: not IsSteam

Source: "Input\_Patch\st_1_base\*";         DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: Patch; Check: IsSteam
Source: "Input\_Patch\st_2_extra\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Check: IsSteam
Source: "Input\_Patch\st_9_unhollowed\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs;            Components: Patch; Check: IsSteam
#endif

; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; This include should be here because the patch files above can be overwritten by this include, and the Files section below overwrites some config files that this include extracts
#include "components.iss"

[Files]
#ifndef DEBUG
Source: "Input\Custom_doorstop\*"; DestDir: "{app}";                Flags: ignoreversion recursesubdirs solidbreak;        Components: BepInEx
Source: "Input\BepInEx_config\*";  DestDir: "{app}";                Flags: ignoreversion recursesubdirs;                   Components: BepInEx
;Source: "Input\BepInEx_Dev\*";    DestDir: "{app}";                Flags: ignoreversion recursesubdirs;                   Components: BepInEx\Dev
Source: "Input\Default_configs\*"; DestDir: "{app}\BepInEx\config"; Flags: ignoreversion recursesubdirs onlyifdoesntexist; Components: BepInEx
;-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Source: "Input\_TL\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs; Components: AT\TL
Source: "Input\Config_eng\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: en
Source: "Input\Config_jap\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Languages: jp
#endif

[InstallDelete]
; Unnecessary
Type: files; Name: "{app}\SamabakeScramble.exe.config" 

; Will get replaced, makes sure there are no stale files left
Type: filesandordirs; Name: "{app}\BepInEx\SamabakeScramble"; Components: BepInEx
Type: files; Name: "{app}\DigitalCraft\hid.dll"; Components: BepInEx

; Clean up old translations
Type: filesandordirs; Name: "{app}\BepInEx\translation"; Components: AT\TL

; Just in case. Also resets any hash caches
Type: filesandordirs; Name: "{app}\[UTILITY] KKManager"; Components: KKManager

; Remove incompatible / broken old mods
Type: files; Name: "{app}\BepInEx\patchers\IMGUIModule.Il2Cpp.CoreCLR.Patcher.dll"; Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\BepInEx\plugins\ConfigurationManager.dll";                Components: BepInEx\ConfigurationManager_Il2Cpp
Type: files; Name: "{app}\BepInEx\plugins\BepInEx.KeyboardShortcut.dll";            Components: BepInEx\ConfigurationManager_Il2Cpp

; Clean up old modpacks
#ifndef LITE
Type: filesandordirs; Name: "{app}\abdata\chara\TekitoMOD";               Components: Content\Hardmods
#endif 
Type: files; Name: "{app}\abdata\adv\list\lit\000_40.unity3d";            Components: Maps
Type: files; Name: "{app}\abdata\map\list\040_00.unity3d";                Components: Maps
Type: files; Name: "{app}\abdata\map\scene\000_40\40.unity3d";            Components: Maps
Type: files; Name: "{app}\abdata\map\ui\040_00.unity3d";                  Components: Maps
Type: files; Name: "{app}\abdata\map\list\200_56.unity3d";                Components: Maps
Type: filesandordirs; Name: "{app}\abdata\map\collison\svsce_mp";         Components: Maps
Type: filesandordirs; Name: "{app}\abdata\map\lightmapsettings\svsce_mp"; Components: Maps
Type: filesandordirs; Name: "{app}\abdata\map\scene\svsce_mp";            Components: Maps
Type: filesandordirs; Name: "{app}\abdata\map\ui\svsce_mp";               Components: Maps
Type: filesandordirs; Name: "{app}\abdata\map\CustomMap";                 Components: Maps
Type: files; Name: "{app}\abdata\adv\list\lit\100_00.unity3d";            Components: Maps
Type: files; Name: "{app}\abdata\map\list\100_00_AA1.unity3d";            Components: Maps
Type: files; Name: "{app}\abdata\adv\list\lit\100_00_AA1.unity3d";        Components: Maps
Type: files; Name: "{app}\abdata\adv\list\lit\200_56_CE.unity3d";         Components: Maps
Type: filesandordirs; Name: "{app}\abdata\mods\CustomMaps";               Components: Maps
Type: filesandordirs; Name: "{app}\abdata\sound\data\bgm\custom";         Components: Maps

; Problematic config files
Type: files; Name: "{app}\BepInEx\config\SVS_HSceneAddOn.cfg";
Type: filesandordirs; Name: "{app}\BepInEx\config\ILL_SliderUnlocker";         Components: Content\SliderUnlock


[CustomMessages]
MsgMissingDLC1=NOTICE - You are missing the optional Additional Personality Pack (2024-11-01 Paid DLC). It adds 6 new female personalities (voiced), and 2 new male personalities (non-voiced).%n%nThis DLC is optional, the patch will work fine without it. If you want to use it, install it BEFORE running HF Patch.
jp.MsgMissingDLC1=注意 - 「サマバケ！すくらんぶる 性格追加パック」(2024-11-01)のオプションのアップデートが欠けています。%n%n使用したい場合は、HF Patchを実行する前にインストールしてください。

IconGame=Summer Vacation! Scramble
jp.IconGame=サマバケ！すくらんぶる

[Tasks]
Name: desktopicon; Description: "{cm:TaskIcon}"; Flags: unchecked
Name: delete; Description: "{cm:TaskDelete}";
Name: delete\Plugins; Description: "{cm:TaskDeletePlugins}";
Name: delete\Config; Description: "{cm:TaskDeletePluginSettings}"; Flags: unchecked
Name: delete\scripts; Description: "Delete old scripts (ScriptLoader, frida)"
Name: delete\Listfiles; Description: "{cm:TaskDeleteLst}"; Flags: unchecked

[Icons]
Name: "{userdesktop}\{cm:IconGame}"; Filename: "{app}\SamabakeScramble.exe"; IconFilename: "{app}\SamabakeScramble.exe"; WorkingDir: "{app}\"; Flags: createonlyiffileexists; Tasks: desktopicon; Comment: "{cm:IconGame}"

[Run]
Filename: "{app}\SamabakeScramble.exe"; Description: "{cm:RunGame}"; Flags: postinstall runasoriginaluser nowait skipifsilent skipifdoesntexist
;Filename: "{app}\[UTILITY] KKManager\StandaloneUpdater.exe"; Parameters: """{app}"""; Description: "{cm:StartUpdate}"; Flags: postinstall runascurrentuser unchecked nowait skipifsilent skipifdoesntexist
#include "HelperLib\CommonRun.iss"

[Registry]
; The rest of regkeys is added in CommonRun.iss
Root: HKCU; Subkey: "Software\ILLGAMES\SamabakeScramble"; ValueType: string; ValueName: "PRODUCTNAME"; ValueData: "サマバケ！すくらんぶる"; Components: MISC\FIX

[Code]
// --------------------------------------------------------------------------------------- Helper methods

function PersonalityDlcInstalled(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\abdata\sv_add020_00'));
end;

function IsSteam(): Boolean;
begin
  Result := FileExists(ExpandConstant('{app}\DefaultData\url\st_up_api_token.dat'));
end;

// --------------------------------------------------------------------------------------- Installation Events

function OnInstallLocationTest(): Boolean; // Additional validity checks (.exe checks are already passed)
begin
  if (not FileExists(ExpandConstant('{app}\SamabakeScramble_Data\resources.assets')) 
   or not FileExists(ExpandConstant('{app}\abdata\adv\motion\controller\adv\000_00\0.unity3d')) 
   or not FileExists(ExpandConstant('{app}\abdata\sound\setting\sound3dsettingdata\000_00.unity3d')) 
   or not FileExists(ExpandConstant('{app}\abdata\sound\setting\soundsettingdata\000_00.unity3d'))) then
  begin
    // Cancel, there's file corruptions that we can't fix
    MsgBox(ExpandConstant('{cm:MsgMissingGameFiles}'), mbCriticalError, MB_OK);
    Result := False;
    Exit;
  end;
  
  if FileExists(ExpandConstant('{app}\DigitalCraft.exe')) then
  begin
    MsgBox('It looks like the Studio is installed to the same directory as the game, most likely breaking the game install. Studio should be installed outside of the this game''s folder. You will have to reinstall the game and run this patch again.', mbError, MB_OK);
    Result := False;
    Exit;
  end;
  
  // Check for missing paid DLC
  if not PersonalityDlcInstalled() then
    SuppressibleMsgBox(ExpandConstant('{cm:MsgMissingDLC1}'), mbInformation, MB_OK, 0);
  
  Result := True;
end;

procedure OnTasksPageOpen(); // Use to change which tasks are on by default
begin
end;

procedure OnPrepKillTasks(); // Close the game if it's running
begin
  MassTaskKill(['SamabakeScramble.exe', 'UnityCrashHandler64.exe',
                'InitSetting.exe', 'KKManager.exe', 'StandaloneUpdater.exe']);
end;

procedure OnPrepDoCleanup(); // Remove any additional mods outside of the Bepinex folder
begin
  if WizardIsTaskSelected('delete\Listfiles') then
    RemoveNonstandardListfiles(ExpandConstant('{app}'), ExpandConstant('{src}'));

  if WizardIsTaskSelected('delete\scripts') then
  begin
    DelTree(ExpandConstant('{app}\scripts'), True, True, True);
    DelTree(ExpandConstant('{app}\frida-scripts'), True, True, True);
    DeleteFile(ExpandConstant('{app}\dxgi.dll'));
    DeleteFile(ExpandConstant('{app}\frida-gadget.config'));
    DeleteFile(ExpandConstant('{app}\frida-gadget.dll'));
  end;
end;

procedure OnInstallCompleted(); // Final installation step, use to modify files installed by the patch
begin
    DeleteFile(ExpandConstant('{app}\winhttp.dll'));
end;
