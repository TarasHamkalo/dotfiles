require("full-border"):setup {
	-- Available values: ui.Border.PLAIN, ui.Border.ROUNDED
	type = ui.Border.ROUNDED,
}

function Status:name()
	local h = self._tab.current.hovered
	if not h then
		return ui.Line {}
	end

	return ui.Line(" " .. h.name)
end
