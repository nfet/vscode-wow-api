--- A non-fatal assertion that routes failures through the error handler instead of hard-erroring.
--- @see Blizzard_SharedXMLBase/ErrorUtil.lua
--- @param condition boolean                            @The condition to assert
--- @param msgStringOrFunction? string|fun(...):string  @Error message or a function that returns one
--- @param ... any                                      @Format args if `{msgStringOrFunction}` is a format string, or args passed to the function
function assertsafe(condition, msgStringOrFunction, ...) end
