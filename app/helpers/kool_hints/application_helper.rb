module KoolHints
  module ApplicationHelper
    def markdown(markup)
      Redcarpet::Markdown.new(Redcarpet::Render::XHTML, :hard_wrap => true, :filter_html => true).render(markup).html_safe
    end

    def koolhint(name)
      koolhint = KoolHint.where(:name => name).first
      return unless koolhint

      content_tag(:div) do
        content = content_tag(:div) { markdown(koolhint.content) }
        content += content_tag(:div) {
          link_to('Edit', edit_kool_hint_path(koolhint, :return_to => request.fullpath))
        }
        content
      end
    end
  end
end
