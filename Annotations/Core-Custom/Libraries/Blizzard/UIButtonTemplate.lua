---@meta _

--- @class UIButtonMixin
--- @field buttonArtKit string?
--- @field disabledTooltip string?
--- @field disabledTooltipAnchor string?
--- @field disabledTooltipOffsetX number?
--- @field disabledTooltipOffsetY number?
--- @field tooltipTitle string?
--- @field tooltipText string?
--- @field tooltipTitleColor table?
--- @field tooltipTextColor table?
--- @field tooltipAnchor string?
--- @field tooltipOffsetX number?
--- @field tooltipOffsetY number?
--- @field tooltipDisableWrapText boolean?
--- @field onClickHandler fun(self:UIButtonMixin, ...)|nil
--- @field onClickSoundKit number?
--- @field onEnterHandler fun(self:UIButtonMixin):boolean|nil
--- @field customTextFormatter fun(self:UIButtonMixin, enabled:boolean, highlight:boolean):string|nil
--- @field Text FontString?
local S = {}

--
--- @class UIUIButton : UIButtonMixin
--

function S:InitButton() end
function S:OnClick(...) end
function S:OnEnter() end
function S:OnLeave() end

--- @param buttonArtKit string
function S:SetButtonArtKit(buttonArtKit) end

--- @param onClickHandler fun(self:UIButtonMixin, ...)
--- @param onClickSoundKit number?
function S:SetOnClickHandler(onClickHandler, onClickSoundKit) end

--- @return number?
function S:GetOnClickSoundKit() end

--- @param customTextFormatter fun(self:UIButtonMixin, enabled:boolean, highlight:boolean):string
function S:SetCustomTextFormatter(customTextFormatter) end

function S:ClearCustomTextFormatter() end
function S:RunCustomTextFormatter() end

--- @param onEnterHandler fun(self:UIButtonMixin):boolean
function S:SetOnEnterHandler(onEnterHandler) end

--- @param tooltipTitle string?
--- @param tooltipText string?
function S:SetTooltipInfo(tooltipTitle, tooltipText) end

--- @param tooltipAnchor string
--- @param tooltipOffsetX number?
--- @param tooltipOffsetY number?
function S:SetTooltipAnchor(tooltipAnchor, tooltipOffsetX, tooltipOffsetY) end

--- @param disabledTooltip string?
--- @param disabledTooltipAnchor string?
--- @param disabledTooltipOffsetX number?
--- @param disabledTooltipOffsetY number?
function S:SetDisabledTooltip(disabledTooltip, disabledTooltipAnchor, disabledTooltipOffsetX, disabledTooltipOffsetY) end
