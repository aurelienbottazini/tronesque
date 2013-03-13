require 'erb'

class Builder < Thor

  # all colors used by themes, named based on where I got them
  # (from tron movie captures, concept art etc).
  COLORS = {
      :window_bar => "#effffe",
      :text_menu_bar_frame_contour => "#d3f9ee",
      :interface_button_darker => "#96a5d9",
      :interface_button => "#afc0fd",
      :encom_blue => "#bad6e2",
      :encom_blue_brighter => "#d2f1ff",
      :circle_dark_blue => "#022028",
      :circle_dark_blue_brighter => "#033340",
      :black_outfit_brighter => "#1d5483",
      :black_outfit_even_brighter => "#2872b2",
      :black_outfit => "#081724",
      :interface_bar => "#fffed9",
      :inside_tron_orange => "#f5b55f",
      :inside_tron_red => "#d85941",
      :bright_inside_tron_red => "#ff694d",
      :clu_yellow => "#ebea48",
      :bright_clu_yellow => "#fffe4e",
      :end_credit_green => "#68f6cb",
      :end_credit_green_text => "#5dc9a6",
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
