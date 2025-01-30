[Components]
Name: "BepInEx";                               Description: "BepInEx-Unity.IL2CPP win-x64 v6.0.0.0 (Plugin framework)"                             ; Types: full_en full extra_en extra custom bare; Flags: fixed
Name: "BepInEx\MessageCenter";                 Description: "Message Center v0.7 (Allows plugins to show messages in top left corner of the game)" ; Types: full_en full extra extra_en
Name: "BepInEx\ConfigurationManager_Il2Cpp";   Description: "BepInEx.ConfigurationManager v18.4 (Can change plugin settings. Press F1 to open)"    ; Types: full_en full extra extra_en
Name: "BepInEx\BepInEx_SplashScreen_BepInEx6"; Description: "BepInEx.SplashScreen_BepInEx6 v2.2.1.1 (A loading screen on game startup with information about patchers and plugins being currently loaded)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
; Name: "IllusionLaunchers";                     Description: "IllusionLaunchers_HoneyCome v3.4.1.36297 (Custom game launcher)"                      ; Types: full_en full extra extra_en custom
Name: "KKManager";                             Description: "KKManager v1.4.2.0 (Manage and update mods, browse cards)"                            ; Types: full_en full extra extra_en custom
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "API";                                   Description: "APIs (Plugins required by other plugins and mods to function)"                        ; Types: full_en full extra extra_en custom bare; Flags: fixed
Name: "API\SVS_BepisPlugins";                  Description: "SVS_BepisPlugins v20.0 (Essential plugins required by many other plugins to function)"; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "AT";                                    Description: "XUnity Auto Translator v5.4.0 (Translation loader, automatic web translations)"       ; Types: full extra full_en extra_en custom
Name: "AT\TL";                                 Description: "{cm:CompTL}"                                                                          ; Types: full_en extra_en
Name: "AT\TL\Subtitles";                       Description: "SVS_Subtitles v0.0.2.0 (Adds subtitles to H Scenes. Japanese subtitles are also available. Very bad quality)"; Types: full_en extra_en
Name: "AT\TextureTrigger";                     Description: "Texture Trigger v0.2 (Workaround for some images not getting translated by AutoTranslator)"; Types: full_en extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "UNC";                                   Description: "{cm:CompUNC}"                                                                         ; Types: full_en full extra extra_en
Name: "UNC\UncensorHardmod";                   Description: "SVS Uncensored HardMod Rev3 (Basic male and female uncensor, scrunchy)"               ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Content";                               Description: "Additional content (Needed to properly load most character cards and scenes)"         ; Types: full_en full extra extra_en
#ifndef LITE
Name: "Content\Hardmods";                      Description: "Hardmod pack 2025/01/30 (Numerous clothing and accessory mods. Can't be uninstalled, CAN CAUSE ISSUES!)"
Name: "Content\Hardmods\HardmodCards";         Description: "Character and outfit cards (A lot of extra cards that came included with the hardmods. Will fill up your character list!)"
Name: "Content\MapPack";                       Description: "SVS Custom Expansion v0.6.1 (Custom maps for the game)"                               
#endif 
Name: "Content\SliderUnlock";                  Description: "SVS_SliderUnlock v3.0.2 (Unlocks ranges of most character maker sliders)"             ; Types: full_en full extra extra_en
Name: "Content\SVS_TraitUnlocker";             Description: "TraitUnlocker v1.0 (Unlocks trait limit in maker)"                                    ; Types: full_en full extra extra_en
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "FIX";                                   Description: "{cm:CompFIX}"                                                                         ; Types: extra extra_en
Name: "FIX\IllusionFixes";                     Description: "IllusionFixes_IL2CPP v22.0.2 (A collection of essential fixes and improvements)"      ; Types: full_en full extra extra_en custom bare
; Name: "FIX\ByteFiddler";                       Description: "ByteFiddler v1.0 (Edit process memory at runtime, needed to fix game crashes)"        ; Types: full_en full extra extra_en custom bare
Name: "FIX\WebRequestBlocker";                 Description: "Web Request Blocker v1.1.2 (Fixes the game requiring internet connection to start)"   ; Types: full_en full extra extra_en
Name: "FIX\ProcessorAffinityOverride";         Description: "ProcessorAffinityOverride v1.0 (Overrides processor affinity, needed to fix game crashes on Ryzen 3xxx systems)"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "Feature";                               Description: "Improvements and additional features"                                                 
Name: "Feature\ClothingStateMenu";             Description: "Clothing State Menu v5.0 (Can undress in chara maker and in H scenes)"                ; Types: full_en full extra_en extra
Name: "Feature\EnableFullScreenToggle";        Description: "Enable Full Screen Toggle v0.7 (Allow toggling full screen with Alt+Enter)"           ; Types: full_en full extra extra_en
Name: "Feature\MuteInBackground";              Description: "Mute In Background v0.7 (Mute the game when it's not in focus, configure in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\SVS_PovX";                      Description: "SVS_PovX v0.0.2 (Adds first-person view in H scenes, check hotkeys in plugin settings)"; Types: full_en full extra extra_en
Name: "Feature\JumpLister";                    Description: "JumpLister v1.1 (Adds useful options to the game's Jump List in taskbar right-click menu)"; Types: full_en full extra extra_en
Name: "Feature\SVS_FavorabilityGainController"; Description: "FavorabilityGainController v1.2 (Allows changing point gain from interactions)"       ; Types: full_en full extra extra_en
Name: "Feature\CharaFilter";                   Description: "CharaFilter v0.0.3 (Allows you to filter character/coordinate cards with personalities and folder categories)"; Types: full_en full extra extra_en
Name: "Feature\PostHClothingStatePersistence"; Description: "Post H Clothing State Persistence v1.0.4 (After H, clothing state will persist until the end of period based on config)"; Types: extra extra_en
Name: "Feature\HStartClothingState";           Description: "H Start Clothing State v1.0.0 (When you start H, clothing state will be applied according to configuration settings)"; Types: extra extra_en
Name: "Feature\EveryoneTakeOffYourClothes";    Description: "SVS Everyone Take Off Your Clothes v1.0.0 (Press hotkey (LeftAlt+C by default) to make everyone naked for a period of time)"; Types: extra extra_en
Name: "Feature\EnableResize";                  Description: "Enable Resize v0.7 (Enable resizing of game window)"                                  ; Types: extra extra_en
Name: "Feature\FixationalEyeMovement";         Description: "FixationalEyeMovement v1.0.2 (Make character's eyes in H scenes move randomly)"       ; Types: extra extra_en
Name: "Feature\GraphicsSettings";              Description: "Graphics Settings v0.7 (More graphics settings, access from plugin settings)"         
Name: "Feature\SVS_Hair";                      Description: "SVS_Hair v0.0.2 (Make hair partially transparent over the eyes)"                      
Name: "Feature\DisplayofThumbnails";           Description: "DisplayofThumbnails v0.1.0.2 (Enlarges some lists in character maker)"                
Name: "Feature\LoveMachine";                   Description: "LoveMachine v3.19.101 (Adds support for some computer-controlled sex toys)"           
Name: "Feature\FutanariSon";                   Description: "SVS_FutanariSon v0.0.4 (Can make everyone futanari, and disable futanari when in a female position)"
; -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Name: "MISC";                                  Description: "{cm:CompMISC}"                                                                        
Name: "MISC\RuntimeUnityEditor_BepInEx6_IL2CPP"; Description: "Runtime Unity Editor v5.5.1 (Debugging tool for applications made with Unity3D game engine (IL2CPP runtime))"; Types: full_en full extra extra_en
Name: "MISC\RuntimeUnityEditor\Trainer";       Description: "Cheat Tools v3.5 (Trainer, press F12 to open, it's in the bottom left corner)"        ; Types: full_en full extra extra_en
; Name: "MISC\FullSave";                         Description: "Full Save (Save file with everything unlocked in main game. Overwrites your current progress!)"
Name: "MISC\Memes";                            Description: "Custom intro voices v30.0 (Nice crock bro)"                                           ; Types: extra extra_en

[Files]
Source: "Input\_Plugins\_out\BepInEx-Unity.IL2CPP-win-x64\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs solidbreak; Components: BepInEx; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.ConfigurationManager\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\ConfigurationManager_Il2Cpp; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MessageCenter\*";   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\MessageCenter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\BepInEx.SplashScreen\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: BepInEx\BepInEx_SplashScreen_BepInEx6; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableFullScreenToggle\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableFullScreenToggle; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\EnableResize\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EnableResize; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\GraphicsSettings\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\GraphicsSettings; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\LoveMachine_for_Summer_Vacation_Scramble\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\LoveMachine; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\MuteInBackground\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\MuteInBackground; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_DisplayofThumbnails\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\DisplayofThumbnails; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_FixationalEyeMovement\*";  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\FixationalEyeMovement; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_Hair\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\SVS_Hair; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_ClothingStateMenu\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\ClothingStateMenu; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_PovX\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\SVS_PovX; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\HCSVS_JumpLister\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\JumpLister; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_FavorabilityGainController\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\SVS_FavorabilityGainController; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_CharaFilter\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\CharaFilter; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_EveryoneTakeOffYourClothes\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\EveryoneTakeOffYourClothes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_HStartClothingState\*";    DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\HStartClothingState; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_PostHClothingStatePersistence\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\PostHClothingStatePersistence; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_FutanariSon\*";            DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Feature\FutanariSon; Excludes: "manifest.xml"
#ifndef LITE
; Source: "Input\_Plugins\_out\Hardmods\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods; Excludes: "manifest.xml"
; Source: "Input\_Plugins\_out\Hardmods_cards\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods\HardmodCards; Excludes: "manifest.xml"
#endif 
Source: "Input\_Plugins\_out\SVS_BepisPlugins\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: API\SVS_BepisPlugins; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\TextureTrigger\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\TextureTrigger; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\IllusionFixes\*";       DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\IllusionFixes; Excludes: "manifest.xml"
; Source: "Input\_Plugins\_out\Patcher_ByteFiddler\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\ByteFiddler; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Patcher_ProcessorAffinityOverride\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\ProcessorAffinityOverride; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\WebRequestBlocker\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: FIX\WebRequestBlocker; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\KKManager\*";                  DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: KKManager; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Memes\*";                      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\Memes; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\RuntimeUnityEditor\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor_BepInEx6_IL2CPP; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_CheatTools\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: MISC\RuntimeUnityEditor\Trainer; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Uncensor_Hardmod_Rev3\*";      DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: UNC\UncensorHardmod; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\XUnity.AutoTranslator\*"; DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_Subtitles\*";              DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: AT\TL\Subtitles; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_SliderUnlock\*";           DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\SliderUnlock; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Hardmods\*";                   DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\Hardmods_cards\*";             DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\Hardmods\HardmodCards; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_CustomExpansion\*";        DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\MapPack; Excludes: "manifest.xml"
Source: "Input\_Plugins\_out\SVS_TraitUnlocker\*";          DestDir: "{app}"; Flags: ignoreversion recursesubdirs createallsubdirs; Components: Content\SVS_TraitUnlocker; Excludes: "manifest.xml"