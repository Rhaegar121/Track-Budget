module ApplicationHelper
  def icon(name)
    content_tag(:i, '', class: name.to_s)
  end
end
