--- @class UIDropDownMenuFrame : Frame
--- @field displayMode string
--- @field initialize fun(self: Frame, level: number)

--- @param level number Dropdown level (1 for root menu)
--- @param value any The value to set on the dropdown frame
--- @param dropDownFrame Frame The dropdown frame (e.g. created with UIDropDownMenuTemplate)
--- @param anchorName string|Frame|nil Anchor point name (e.g. "cursor", "TOPLEFT") or frame to anchor to
--- @param xOffset number|nil X offset from anchor
--- @param yOffset number|nil Y offset from anchor
--- @param menuList table|nil Optional menu list table
--- @param button Button|nil The button that triggered the menu
--- @param autoHideDelay number|nil Delay in seconds before auto-hiding
--- @param overrideDisplayMode string|nil Override display mode ("MENU" etc.)
function ToggleDropDownMenu(level, value, dropDownFrame, anchorName, xOffset, yOffset, menuList, button, autoHideDelay,
overrideDisplayMode) end

--- @param info table Menu item info table (text, func, checked, notCheckable, isTitle, etc.)
--- @param level number The dropdown level this button belongs to
function UIDropDownMenu_AddButton(info, level) end
