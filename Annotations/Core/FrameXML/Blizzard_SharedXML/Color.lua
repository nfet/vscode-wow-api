---@meta _

--- @alias AlphaLevel number | "0.0" | "1.0"
--- @alias RGBColor number | "0.0" | "1.0"
--- @alias RGBColorBytes number @A color from [0-255] rgb values
--- @alias RGBHex string The 6-char RGBHex color string, i.e. EFEFEF

---@class ColorRGBData
---@field r RGBColor 0.0 to 1.0
---@field g RGBColor 0.0 to 1.0
---@field b RGBColor 0.0 to 1.0
---@field colorStr string

---@class ColorRGBAData : ColorRGBData
---@field a number

---@alias colorRGB ColorRGBData | ColorMixin
---@alias colorRGBA ColorRGBAData | colorRGB

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin)
---@class ColorMixin
ColorMixin = {}
--
---@alias Color ColorMixin | ColorRGBData
--
---[FrameXML](https://www.townlong-yak.com/framexml/go/CreateColor)
---@param r RGBColor 0.0 to 1.0
---@param g RGBColor 0.0 to 1.0
---@param b RGBColor 0.0 to 1.0
---@param a AlphaLevel
---@return colorRGBA
function CreateColor(r, g, b, a) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:IsEqualTo)
---@param otherColor colorRGBA
---@return boolean
function ColorMixin:IsEqualTo(otherColor) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:GetRGB)
---@return RGBColor, RGBColor, RGBColor @Returns r, g, b as a color from [0.0-1.0] rgb values
function ColorMixin:GetRGB() end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:GetRGBAsBytes)
---@return RGBColorBytes, RGBColorBytes, RGBColorBytes @Returns r, g, b as a color from [0-255] rgb values.
function ColorMixin:GetRGBAsBytes() end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:GetRGBA)
---@return RGBColor, RGBColor, RGBColor, AlphaLevel @Returns r, g, b as a color from [0.0-1.0] rgb values
function ColorMixin:GetRGBA() end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:GetRGBAAsBytes)
---@return RGBColorBytes, RGBColorBytes, RGBColorBytes, AlphaLevel @Returns r, g, b as a color from [0-255] rgb values.
function ColorMixin:GetRGBAAsBytes() end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:SetRGBA)
---@param r RGBColor
---@param g RGBColor
---@param b RGBColor
---@param a AlphaLevel
function ColorMixin:SetRGBA(r, g, b, a) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:SetRGB)
---@param r RGBColor 0.0 to 1.0
---@param g RGBColor 0.0 to 1.0
---@param b RGBColor 0.0 to 1.0
function ColorMixin:SetRGB(r, g, b) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:GenerateHexColor)
---@return RGBHex
function ColorMixin:GenerateHexColor() end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:GenerateHexColorMarkup)
---@return string
function ColorMixin:GenerateHexColorMarkup() end

---[FrameXML](https://www.townlong-yak.com/framexml/go/ColorMixin:WrapTextInColorCode)
---@param text string
---@return string
function ColorMixin:WrapTextInColorCode(text) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/WrapTextInColorCode)
---@param text string
---@param colorHexString string
---@return string
function WrapTextInColorCode(text, colorHexString) end
