class Builder < Thor

  # all colors used by themes, named based on where I got them
  # (from tron movie captures, concept art etc).
  COLORS = {
      :windowbar => "#effffe",
      :textmenubarframecontour => "#d3f9ee",
      :interfacebuttondarker => "#96a5d9",
      :interfacebutton => "#afc0fd",
      :encomblue => "#bad6e2",
      :encombluebrighter => "#d2f1ff",
      :circledarkblue => "#022028",
      :circledarkbluebrighter => "#033340",
      :blackoutfitbrighter => "#1d5483",
      :blackoutfitevenbrighter => "#2872b2",
      :blackoutfit => "#081724",
      :interfacebar => "#fffed9",
      :insidetronorange => "#f5b55f",
      :insidetronred => "#d85941",
      :brightinsidetronred => "#ff694d",
      :cluyellow => "#ebea48",
      :brightcluyellow => "#fffe4e",
      :endcreditgreen => "#68f6cb",
      :endcreditgreentext => "#5dc9a6",
  }

  desc "build_themes", 'uses erb templates to build themes'
  def build_themes
  end
end
