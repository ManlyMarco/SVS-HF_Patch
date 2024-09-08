[Components]
Name: "BepInEx";                               Description: "BepInEx-Unity.IL2CPP win-x64 v6.0.0 be.711 (Plugin framework)"                        ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v0.7 (Allows plugins to show messages in top left corner of the game)" ; Types: full_en full extra extra_en
Name: "BepInEx\ConfigurationManager_Il2Cpp";   Description: "BepInEx.ConfigurationManager v18.3 (Can change plugin settings. Press F1 to open)"    ; Types: full_en full extra extra_en
; Name: "BepInEx\BepInEx_SplashScreen_BepInEx6"; Description: "BepInEx.SplashScreen_BepInEx6 v2.2.1.0 (A loading screen on game startup with information about patchers and plugins being currently loaded)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Name: "IllusionLaunchers";                     Description: "IllusionLaunchers_HoneyCome v3.4.1.36297 (Custom game launcher)"                      ; Types: full_en full extra extra_en custom
Name: "KKManager";                             Description: "KKManager v1.4.1.0 (Manage and update mods, browse cards)"                            ; Types: full_en full extra extra_en custom
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "API";                                   Description: "APIs (Plugins required by other plugins and mods to function)"                        ; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "API\SVS_BepisPlugins";                  Description: "SVS_BepisPlugins v20.0 (Essential plugins required by many other plugins to function)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.4.0 (Translation loader, automatic web translations)"       ; Types: full extra full_en extra_en custom
Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
Name: "AT\TextureTrigger";                     Description: "Texture Trigger v0.2 (Workaround for some images not getting translated by AutoTranslator)"; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\UncensorHardmod";                   Description: "SVS Uncensored HardMod Rev2 (Basic male and female uncensor, scrunchy)"               ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
#ifndef LITE
Name: "Content";                               Description: "Additional content (Needed to properly load most character cards and scenes)"         ; Types: full_en full extra extra_en
; Name: "Content\Hardmods";                      Description: "Hardmod pack 2024/02/20 (Numerous clothing and accessory mods. Can't be uninstalled!)"; Types: extra extra_en
; Name: "Content\Hardmods\HardmodCards";         Description: "Character and outfit cards (A lot of extra cards that came included with the hardmods. Will fill up your character list!)"
; Name: "Content\HC_SliderUnlock";               Description: "SliderUnlock v1.0.0 (Unlocks slider ranges in maker(fragile and might break))"
#endif 
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: extra extra_en
Name: "FIX\IllusionFixes";                     Description: "IllusionFixes_IL2CPP v21.6 (A collection of essential fixes and improvements)"        ; Types: full_en full extra extra_en custom bare
Name: "FIX\ByteFiddler";                       Description: "ByteFiddler v1.0 (Edit process memory at runtime, needed to fix game crashes)"        ; Types: full_en full extra extra_en
Name: "FIX\ProcessorAffinityOverride";         Description: "ProcessorAffinityOverride v1.0 (Overrides processor affinity, needed to fix game crashes on Ryzen 3xxx systems)"; Types: full_en full extra extra_en
; Name: "FIX\WebRequestBlocker";                 Description: "Web Request Blocker v1.0.0 (Fixes the game requiring internet connection to start)"   ; Types: full_en full extra extra_en custom bare
; Name: "FIX\HC_Fix_CraftWindow";                Description: "Fix_CraftWindow v1.0.1 (Enlarge some studio menus to show more items)"                ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 
Name: "Feature\MuteInBackground";              Description: "Mute In Background v0.7 (Mute the game when it's not in focus, configure in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\GraphicsSettings";              Description: "Graphics Settings v0.7 (More graphics settings, access from plugin settings)"         ; Types: extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v0.7 (Enable resizing of game window)"                                  ; Types: extra extra_en
Name: "Feature\EnableFullScreenToggle";        Description: "Enable Full Screen Toggle v0.7 (Allow toggling full screen with Alt+Enter)"           ; Types: extra extra_en
Name: "Feature\LoveMachine";                   Description: "LoveMachine v3.19.101 (Adds support for some computer-controlled sex toys)"           
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\RuntimeUnityEditor_BepInEx6_IL2CPP"; Description: "Runtime Unity Editor v5.4.1 (Debugging tool for applications made with Unity3D game engine (IL2CPP runtime))"; Types: full_en full extra extra_en
; Name: "MISC\RuntimeUnityEditor\Trainer";       Description: "Cheat Tools v3.3.1.1 (Trainer, press F12 to open, it's in the bottom left corner)"    ; Types: full_en full extra_en extra
; Name: "MISC\FullSave";                         Description: "Full Save (Save file with everything unlocked in main game. Overwrites your current progress!)"
Name: "MISC\Memes";                            Description: "Custom intro voices v29.0 (What the fuck is that)"                                    ; Types: extra extra_en

[Files]
Source: "Input\_Plugins\_out\BepInEx-Unity.IL2CPP-win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager.Il2Cpp\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager_Il2Cpp; Excludes: "manifest.xml"
; Source: "Input\_Plugins\_out\BepInEx.SplashScreen_BepInEx6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\BepInEx_SplashScreen_BepInEx6; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MessageCenterIL2CPP_net6\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableFullScreenToggleIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableFullScreenToggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableResizeIL2CPP_net6\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\GraphicsSettingsIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\GraphicsSettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_Summer_Vacation_Scramble\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MuteInBackgroundIL2CPP_net6\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
#ifndef LITE
; Source: "Input\_Plugins\_out\Hardmods\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods; Excludes: "manifest.xml"
; Source: "Input\_Plugins\_out\Hardmods_cards\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods\HardmodCards; Excludes: "manifest.xml"
; Source: "Input\_Plugins\_out\HC_SliderUnlock\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\HC_SliderUnlock; Excludes: "manifest.xml"
#endif 
Source: "Input\_Plugins\_out\SVS_BepisPlugins\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: API\SVS_BepisPlugins; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\TextureTrigger\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\TextureTrigger; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionFixes_IL2CPP\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IllusionFixes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Patcher_ByteFiddler\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\ByteFiddler; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Patcher_ProcessorAffinityOverride\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\ProcessorAffinityOverride; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\KKManager\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: KKManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Memes\*";                      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\Memes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\RuntimeUnityEditor_BepInEx6.IL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor_BepInEx6_IL2CPP; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Uncensor_Hardmod_Rev2\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\UncensorHardmod; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator-BepInEx-IL2CPP\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"