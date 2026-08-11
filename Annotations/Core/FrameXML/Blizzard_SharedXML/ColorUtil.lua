---@meta _
---@see https://www.townlong-yak.com/framexml/era/Blizzard_SharedXML/ColorUtil.lua

COLOR_FORMAT_RGBA = "RRGGBBAA";
COLOR_FORMAT_RGB = "RRGGBB";
COLOR_FORMAT_ARGB = "AARRGGBB";
FONT_COLOR_CODE_CLOSE = "|r";

--- [ColorUtil.lua](https://www.townlong-yak.com/framexml/era/Blizzard_SharedXML/ColorUtil.lua#6)
--- @return number The decimal color value
--- @param str string
--- @param index number
function ExtractColorValueFromHex(str, index) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/CreateColorFromHexString)
---@param hexColor string @Supports ARGB format
---@return colorRGBA
function CreateColorFromHexString(hexColor) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/CreateColorFromBestRGBHexString)
---@since 1.15.xxx
---@param hexColor string @Supports RGBA(#000000ff)
---@return colorRGBA
function CreateColorFromRGBAHexString(hexColor) end
---[FrameXML](https://www.townlong-yak.com/framexml/go/CreateColorFromBestRGBHexString)
---@since 1.15.xxx
---@param hexColor string @Supports RGB (#000000)
---@return colorRGBA
function CreateColorFromRGBHexString(hexColor) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/CreateColorFromBestRGBHexString)
---@since 12.xx
---@param hexColor string @Supports both RGBA(#000000ff) and RGB (#000000)
---@return colorRGBA
function CreateColorFromBestRGBHexString(hexColor) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/CreateColorFromBytes)
---@since 1.15.xxx
---@param r number
---@param g number
---@param b number
---@param a number
---@return colorRGBA
function CreateColorFromBytes(r, g, b, a) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/AreColorsEqual)
---@param left colorRGBA
---@param right colorRGBA
---@return boolean
function AreColorsEqual(left, right) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/GetClassColor)
---@param classFilename ClassFile
---@return number r
---@return number g
---@return number b
---@return string colorStr
function GetClassColor(classFilename) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/GetClassColorObj)
---@param classFilename string
---@return colorRGB
function GetClassColorObj(classFilename) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/GetClassColoredTextForUnit)
---@param unit string
---@param text string
---@return string
function GetClassColoredTextForUnit(unit, text) end

---[FrameXML](https://www.townlong-yak.com/framexml/go/GetFactionColor)
---@param factionGroupTag string
---@return colorRGBA
function GetFactionColor(factionGroupTag) end
