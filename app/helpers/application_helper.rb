module ApplicationHelper
  include SessionsHelper
  include Pagy::Frontend
  def should_render_menu
    if (controller_name == "sessions") || (controller_name == "usuarios" && action_name == "new")
      return false
    end
    true
  end

  def formatar_data_utc_brt(datetime)
    datetime.in_time_zone("America/Sao_Paulo").strftime("%d/%m/%y %H:%M")
  end

  def remove_acentos(string)
    string.tr(
      "ÀÁÂÃÄÅàáâãäåĀāĂăĄąÇçĆćĈĉĊċČčÐðĎďĐđÈÉẼÊËèéẽêëĒēĔĕĖėĘęĚěĜĝĞğĠġĢģĤĥĦħÌÍÎÏìíîïĨĩĪīĬĭĮįİıĴĵĶķĸĹĺĻļĽľĿŀŁłÑñŃńŅņŇňŉŊŋÒÓÔÕÖØòóôõöøŌōŎŏŐőŔŕŖŗŘřŚśŜŝŞşŠšſŢţŤťŦŧÙÚÛÜùúûüŨũŪūŬŭŮůŰűŲųŴŵÝýÿŶŷŸŹźŻżŽž",
      "AAAAAAaaaaaaAaAaAaCcCcCcCcCcDdDdDdEEEEEeeeeeEeEeEeEeEeGgGgGgGgHhHhIIIIiiiiIiIiIiIiIiJjKkkLlLlLlLlLlNnNnNnNnnNnOOOOOOooooooOoOoOoRrRrRrSsSsSsSssTtTtTtUUUUuuuuUuUuUuUuUuUuWwYyyYyYZzZzZz")
  end
end
