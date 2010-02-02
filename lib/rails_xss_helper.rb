module ActionView
  module Helpers
    module TagHelper
      private
        def content_tag_string(name, content, options, escape = true)
          tag_options = tag_options(options, escape) if options
          content = ERB::Util.h(content) unless content.html_safe?
          "<#{name}#{tag_options}>#{content}</#{name}>".html_safe!
        end
    end
  end
end
