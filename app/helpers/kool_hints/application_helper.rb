module KoolHints
  module ApplicationHelper
    def markdown(markup)
      Redcarpet::Markdown.new(Redcarpet::Render::XHTML, :hard_wrap => true, :filter_html => true).render(markup).html_safe
    end

    def hint(name)
      hint = Hint.where(:name => name).first
      return unless hint

      content_tag(:div) do
        content = content_tag(:div) { markdown(hint.content) }
        content += content_tag(:div) {
          link_to('Edit', edit_kool_hints_hint_path(hint, :return_to => request.fullpath))
        } if can?(:edit, hint)
        content
      end
    end
  end
end
