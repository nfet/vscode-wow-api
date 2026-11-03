--- @class Anchor
--- @field point RegionPointString | "'TOPLEFT'" | "'TOPRIGHT'" | "'BOTTOMLEFT'" | "'BOTTOMRIGHT'" | "'TOP'" | "'BOTTOM'" | "'LEFT'" | "'RIGHT'" | "'CENTER'"
--- @field relativeTo any
--- @field relativePoint RegionPointString | "'TOPLEFT'" | "'TOPRIGHT'" | "'BOTTOMLEFT'" | "'BOTTOMRIGHT'" | "'TOP'" | "'BOTTOM'" | "'LEFT'" | "'RIGHT'" | "'CENTER'"
--- @field x number
--- @field y number
--
--- @class RegionAnchor : Anchor
--
--
-- Blizzard Interface Types for EmmyLua
-- This file does not need to be included in _Common.xml

--[[-----------------------------------------------------------------------------
AnchorMixinInterface
-------------------------------------------------------------------------------]]
--- @class AnchorMixin
--- @see "Interface/SharedXML/AnchorUtil.lua"
local AnchorMixin = {
    --- @type AnchorPoint
    point = '',
    relativeTo = nil,
    --- @type AnchorPoint
    relativePoint = '',
    --- @type number
    x = 0.0,
    --- @type number
    y = 0.0,
};

--- @param point string CENTER, TOPLEFT, etc..
--- @param relativeTo Region
--- @param relativePoint string CENTER, TOPLEFT, etc..
--- @param x number
--- @param y number
function AnchorMixin:Init(point, relativeTo, relativePoint, x, y) end
--- @param point string CENTER, TOPLEFT, etc..
--- @param relativeTo Region
--- @param relativePoint string CENTER, TOPLEFT, etc..
--- @param x number
--- @param y number
function AnchorMixin:Set(point, relativeTo, relativePoint, x, y) end

--- @param region Region
--- @param pointIndex string CENTER, TOPLEFT, etc..
function AnchorMixin:SetFromPoint(region, pointIndex) end
function AnchorMixin:Get() end
--- @param region Region
--- @param clearAllPoints boolean
function AnchorMixin:SetPoint(region, clearAllPoints) end
--- @param region Region
--- @param clearAllPoints boolean
--- @param extraOffsetX number
--- @param extraOffsetY number
function AnchorMixin:SetPointWithExtraOffset(region, clearAllPoints, extraOffsetX, extraOffsetY) end

--- @class AnchorUtil : Anchor
local AnchorUtil = {}

--- @param point string CENTER, TOPLEFT, etc..
--- @param relativeTo Region
--- @param relativePoint string CENTER, TOPLEFT, etc..
--- @param x number
--- @param y number
--- @return RegionAnchor
function AnchorUtil.CreateAnchor(point, relativeTo, relativePoint, x, y) return {}
end

--- @param region Region
--- @param pointIndex number
--- @return RegionAnchor
function AnchorUtil.CreateAnchorFromPoint(region, pointIndex) return {} end
