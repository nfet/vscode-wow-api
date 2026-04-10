--- Shows a static popup dialog defined in StaticPopupDialogs.
---
--- @param which string                      -- Key of StaticPopupDialogs entry
--- @param text_arg1 string|number           -- Replaces %s in dialog.text (first)
--- @param text_arg2 string|number           -- Replaces %s in dialog.text (second)
--- @param data any                          -- Passed to OnAccept / OnCancel handlers
--- @param insertedFrame FrameObj            -- Optional frame inserted into dialog
--- @param insertedFrameData any             -- Data for inserted frame
--- @return  FrameObj 		                   -- The created popup frame (if shown)
function StaticPopup_Show(which, text_arg1, text_arg2, data, insertedFrame, insertedFrameData) end
