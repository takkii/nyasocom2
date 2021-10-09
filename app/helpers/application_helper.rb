module ApplicationHelper
    require "redcarpet"
    require "coderay"

    class HTMLwithCoderay < Redcarpet::Render::HTML
        def block_code(code, language)
            language = language.split(':')[0]

            case language.to_s
            when 'rb'
                lang = 'ruby'
            when 'yml'
                lang = 'yaml'
            when 'css'
                lang = 'css'
            when 'html'
                lang = 'html'
            when ''
                lang = 'md'
            else
                lang = language
            end

            CodeRay.scan(code, lang).div
        end
    end

    def markdown(text)
        extensions = {
          filter_html: true,
          hard_wrap: true,
          space_after_headers: true,
          link_attributes: { rel: 'nofollow', target: '_blank' }
        }

        options = {
            autolink: true,
            space_after_headers: true,
            no_intra_emphasis: true,
            fenced_code_blocks: true,
            tables: true,
            hard_wrap: true,
            xhtml: true,
            lax_html_blocks: true,
            strikethrough: true,
        }

        renderer = Redcarpet::Render::HTML.new(extensions)
        @markdown = Redcarpet::Markdown.new(renderer, options)
        @markdown.render(text).html_safe
    end
end
