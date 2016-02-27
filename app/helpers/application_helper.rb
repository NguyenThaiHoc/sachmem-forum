module ApplicationHelper
  def full_title(page_title = '')
    base_title = t("base_title")
    page_title.empty? ? base_title : page_title + " | " + base_title
  end

  def bootstrap_alert flash_type
    case flash_type
      when :success
        "alert-success"
      when :error
        "alert-danger"
      when :alert
        "alert-warning"
      when :notice
        "alert-info"
      else
        "alert-warning"
    end
  end
end
