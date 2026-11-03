---@meta _

---@class SettingsCategoryMixin
---@field ID number
---@field name string
---@field order number
---@field parentCategory SettingsCategoryMixin?
---@field categorySet any?
---@field subcategories SettingsCategoryMixin[]
---@field tutorial { tooltip:any, callback:fun()|nil }|nil
---@field expanded boolean?
---@field shouldSortAlphabetically boolean?
local S = {}

----------------------------------------------------
-- Initialization
----------------------------------------------------

---@param name string
function S:Init(name) end

----------------------------------------------------
-- Identity
----------------------------------------------------

---@return number
function S:GetID() end

---@return string
function S:GetName() end

---@param name string
function S:SetName(name) end

---@return number
function S:GetOrder() end

---@param order number
function S:SetOrder(order) end

---@return string
function S:GetQualifiedName() end

----------------------------------------------------
-- Parent / Hierarchy
----------------------------------------------------

---@return SettingsCategoryMixin?
function S:GetParentCategory() end

---@param category SettingsCategoryMixin?
function S:SetParentCategory(category) end

---@return boolean
function S:HasParentCategory() end

----------------------------------------------------
-- Category Set
----------------------------------------------------

---@param categorySet any?
function S:SetCategorySet(categorySet) end

---@return any?
function S:GetCategorySet() end

----------------------------------------------------
-- Subcategories
----------------------------------------------------

---@return SettingsCategoryMixin[]
function S:GetSubcategories() end

---@return boolean
function S:HasSubcategories() end

---@param name string
---@param description string?
---@return SettingsCategoryMixin
function S:CreateSubcategory(name, description) end

----------------------------------------------------
-- Tutorial Info
----------------------------------------------------

---@param tooltip any
---@param callback fun()|nil
function S:SetCategoryTutorialInfo(tooltip, callback) end

---@return { tooltip:any, callback:fun()|nil }|nil
function S:GetCategoryTutorialInfo() end

----------------------------------------------------
-- Expansion State
----------------------------------------------------

---@param expanded boolean
function S:SetExpanded(expanded) end

---@return boolean?
function S:IsExpanded() end

----------------------------------------------------
-- Sorting
----------------------------------------------------

---@return boolean?
function S:ShouldSortAlphabetically() end

---@param should boolean
function S:SetShouldSortAlphabetically(should) end
