require 'erb'

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
    Dir.glob('templates/*.erb').each do |erb_file_path|
      theme_path = File.expand_path("./generated/#{erb_file_path.split("/").last[0..-5]}")
      generated_theme_file = File.new(theme_path, "w:utf-8")
      erb_theme_file = ERB.new(File.read(erb_file_path))
      generated_theme_file << erb_theme_file.result(binding)
      generated_theme_file.close
    end
  end
end
