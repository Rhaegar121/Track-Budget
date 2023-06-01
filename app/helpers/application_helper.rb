module ApplicationHelper
    def icon(name)
        content_tag(:i, "", class: "#{name}")
    end
end
