--- Sets the color of all textures and buttons in a chat frame window.
--- Iterates over `CHAT_FRAME_TEXTURES` and applies the RGB vertex color to each
--- texture or button's normal/highlight/pushed textures. Optionally persists the
--- color via `SetChatWindowColor`.
--- @see [FloatingChatFrame](https://www.townlong-yak.com/framexml/ptr/Blizzard_ChatFrameBase/Mainline/FloatingChatFrame.lua#824)
--- @param frame Frame The chat frame whose window color will be set.
--- @param r number The red component of the color (0.0 – 1.0).
--- @param g number The green component of the color (0.0 – 1.0).
--- @param b number The blue component of the color (0.0 – 1.0).
--- @param doNotSave boolean|nil When `true`, skips saving the color with `SetChatWindowColor`.
function FCF_SetWindowColor(frame, r, g, b, doNotSave) end

--- Sets the alpha transparency of all textures in a chat frame window.
--- Iterates over `CHAT_FRAME_TEXTURES` and applies `alpha` to each child object.
--- Optionally persists the alpha via `SetChatWindowAlpha` and always caches the
--- value on `frame.oldAlpha` (falling back to `DEFAULT_CHATFRAME_ALPHA`).
--- @see [FloatingChatFrame](https://www.townlong-yak.com/framexml/ptr/Blizzard_ChatFrameBase/Mainline/FloatingChatFrame.lua#845)
--- @param frame Frame The chat frame whose window alpha will be set.
--- @param alpha number The alpha transparency value (0.0 = fully transparent, 1.0 = fully opaque).
--- @param doNotSave boolean|nil When `true`, skips saving the alpha with `SetChatWindowAlpha`.
function FCF_SetWindowAlpha(frame, alpha, doNotSave) end
