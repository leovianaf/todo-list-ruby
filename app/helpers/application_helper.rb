module ApplicationHelper
  def tag_color(tag)
    predefined_colors = {
      "Urgente" => "#ff0000",
      "Tranquilo" => "#33ff57",
      "Lazer" => "#3357ff",
      "Pessoal" => "#f5a623",
      "Trabalho" => "#d123f5"
    }
    predefined_colors[tag.name] || "#007bff"
  end
end
