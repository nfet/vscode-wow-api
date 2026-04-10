# About Branch: emmy-lua-cppcxy

This branch is for use with the EmmyLua2 IntelliJ-Plugin by CppCXY.
This is a sibling branch to emmy-lua-tangzx (for EmmyLua by tangz)

## Fork Info
upstream -> origin -> emmy-lua-cppcxy branch

## Git Refresh Involves

```shell
git checkout master
git fetch upstream
git merge upstream/master
git push origin master
```
### Then, update the respective branch(es)

```shell
git checkout emmy-lua-cppcxy
git rebase master
```
## Notes
There should be minimal conflict since the branches are additive for the most part.

## Usage
Here is an example .emmyrc.json that must be placed in the project root folder.

```json
{
	"diagnostics": {
		"disable": [
			"assign-type-mismatch",
			"undefined-global",
			"undefined-field",
			"param-type-mismatch",
			"missing-fields",
			"need-check-nil"
		],
		"globals": [
			"UIParentLoadAddOn",
			"CreateColorFromRGBHexString",
			"RaidNotice_AddMessage",
			"SettingsPanel",
			"RaidWarningFrame",
			"SlashCmdList",
			"FrameStackTooltip",
			"SOUNDKIT",
			"ChatTypeInfo",
			"StaticPopupDialogs",
			"ReloadUI",
			"StaticPopup_Visible",
			"RegisterStateDriver",
			"FrameUtil",
			"APIDocumentation",
			"PlayerFrame",
			"TargetFrame",
			"UIWidgetTopCenterContainerFrame",
			"AddonList",
			"OKAY",
			"YES",
			"BACKDROP_TOAST_12_12",
			"FramerateFrame",
			"ChatFrame1Tab",
			"DEFAULT_CHAT_FRAME",
			"ChatFrame1",
			"DEVTOOLS_LONG_STRING_CUTOFF",
			"FCF_SetWindowColor",
			"FCF_SetWindowAlpha",
			"CreateAnchor",
			"AnchorUtil",
			"UISpecialFrames",
			"ACCEPT",
			"CANCEL",
			"Settings",
			"SELECTED_CHAT_FRAME"
		]
	},
	"workspace": {
		"library": [
			"PATH-TO-LUA-SOURCE-FOLDER-1",
			"PATH-TO-LUA-SOURCE-FOLDER-2",
			"PATH-TO-LUA-SOURCE-FOLDER-N..."
		]
	}
}
```

## Links
- [EmmyLua2 IntelliJ Plugin](https://plugins.jetbrains.com/plugin/25076-emmylua2)
- https://github.com/EmmyLuaLs/emmylua-analyzer-rust/blob/main/docs/config/emmyrc_json_EN.md
- https://github.com/EmmyLua/Intellij-EmmyLua2
