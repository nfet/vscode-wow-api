--[[-----------------------------------------------------------------------------
Structures
-------------------------------------------------------------------------------]]
--- @alias UIDropDownMenuButton __UIDropDownMenuButton | Button

--- @class UIDropDownMenuButtonInfo
--- @field text string? Text shown in the dropdown
--- @field value any? Value passed to the click handler
--- @field func fun(self:UIDropDownMenuButton, arg1:any, arg2:any, checked:boolean)|nil Click handler
--- @field checked boolean|fun(value:any):boolean|nil Checked state
--- @field disabled boolean? Whether the entry is disabled
--- @field isNotRadio boolean? If true, checkbox instead of radio button
--- @field notCheckable boolean? If true, hides the check mark
--- @field icon (number|string)? Icon texture or fileID
--- @field iconOnly boolean? Shows icon without text
--- @field iconInfo table? Advanced icon settings (rare)
--- @field tooltipTitle string? Tooltip title
--- @field tooltipText string? Tooltip body text
--- @field tooltipOnButton boolean? Show tooltip on button instead of menu
--- @field minWidth number? Minimum width of the menu entry
--- @field maxWidth number? Maximum width of the menu entry
--- @field justifyH string? "LEFT" | "CENTER" | "RIGHT"
--- @field owner Frame? Owner frame (used internally)
--- @field hasArrow boolean? Whether this entry has a submenu
--- @field menuList table? Submenu entries
--- @field keepShownOnClick boolean? Prevent menu from closing on click
--- @field noClickSound boolean? Suppress click sound
--- @field xOffset number? Horizontal offset of the menu
--- @field yOffset number? Vertical offset of the menu
--- @field anchorName string? Frame name used for anchoring
--- @field anchorPoint FramePoint? Anchor point for submenu

--[[-----------------------------------------------------------------------------
Methods
-------------------------------------------------------------------------------]]
--- Creates and returns a dropdown menu button info table.
--- The returned table is reused by Blizzard code and should be populated
--- before passing to UIDropDownMenu_AddButton().
--- @return UIDropDownMenuButtonInfo info
function UIDropDownMenu_CreateInfo() end

--- Sets the anchor used to position the dropdown list when opened.
--- This controls where the dropdown menu appears relative to the dropdown frame.
--- @param dropdown Frame The dropdown frame (UIDropDownMenuTemplate instance)
--- @param xOffset number Horizontal offset
--- @param yOffset number Vertical offset
--- @param point FramePoint Anchor point on the dropdown list
--- @param relativeTo Frame Frame to anchor to
--- @param relativePoint FramePoint Anchor point on the relative frame
function UIDropDownMenu_SetAnchor(dropdown, xOffset, yOffset, point, relativeTo, relativePoint) end


--[[-----------------------------------------------------------------------------
UIDropDownMenuButton
-------------------------------------------------------------------------------]]
--- @class __UIDropDownMenuButton
--- @field value any                     Value associated with this menu entry
--- @field owner Frame?               Owner frame (usually the dropdown)
--- @field arg1 any?                  Optional argument passed to func
--- @field arg2 any?                  Optional argument passed to func
--- @field checked boolean?           Cached checked state
--- @field isNotRadio boolean?        True if checkbox instead of radio
--- @field notCheckable boolean?      True if checkmark is hidden
--- @field icon Texture?              Optional icon texture
--- @field tooltipTitle string?       Tooltip title
--- @field tooltipText string?        Tooltip body text
--- @field hasArrow boolean?          Whether this button opens a submenu
--- @field menuList table?            Submenu entries
--- @field func fun(self:UIDropDownMenuButton, arg1:any, arg2:any, checked:boolean)|nil
