return {
  entry = function()
    local h = cx.active.current.hovered
    if h then
      if h.cha.is_dir then
        ya.manager_emit("enter", {})
      else
        os.execute(string.format("xdg-open \"%s\" &", h.url))
      end
    end
  end
}
