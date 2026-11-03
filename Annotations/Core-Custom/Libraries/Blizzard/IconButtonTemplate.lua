---@meta _

--- @class IconButtonMixin : UIButtonMixin
--- @field Icon TextureObj
--- @field icon IconIDOrPath?
--- @field iconAtlas string?
--- @field useAtlasSize boolean?
--- @field useIconAsHighlight boolean?
--- @field iconSize number?
--- @field iconWidth number?
--- @field iconHeight number?
local S = {}

--
--- @class IconButton : IconButtonMixin
--

function S:OnLoad() end
function S:OnMouseDown() end
function S:OnMouseUp() end

--- @param icon IconIDOrPath
function S:SetIcon(icon) end

--- @param atlas string
--- @param useAtlasSize boolean?
function S:SetAtlas(atlas, useAtlasSize) end

--- @param enabled boolean
function S:SetEnabledState(enabled) end

