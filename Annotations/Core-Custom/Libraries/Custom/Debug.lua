---@meta _

--- @alias PrintFn fun(...: any) : void @Printer function that outputs plain values to Blizzard Trace UI (like print)
--- @alias TraceFn fun(...: any) : void  @Trace function that outputs plain values to Blizzard Trace UI (like print)

--- @class LogHolder
--- @field printer fun(tagName:Name) : PrintFn
--- @field tracer fun(tagName:Name) : TraceFn