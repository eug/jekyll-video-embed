
module Jekyll
  class VideoEmbed < Liquid::Tag

    Syntax = /^\s*([^\s]+)(\s+(\d+)\s+(\d+)\s*)?/

    Hosts = {
      "ted"     => ->(id) { "https://embed-ssl.ted.com/talks/#{id}.html" },
      "ustream" => ->(id) { "https://ustream.tv/embed/#{id}" },
      "vimeo"   => ->(id) { "https://player.vimeo.com/video/#{id}" },
      "youtube" => ->(id) { "https://youtube.com/embed/#{id}" }
    }

    def initialize(tag_name, markup, tokens)
      super

      if markup =~ Syntax then
        @host = Hosts[tag_name]
        @id = $1

        if $2.nil? then
            @width = 640
            @height = 360
        else
            @width = $2.to_i
            @height = $3.to_i
        end
      else
        raise "No video ID provided in the \"#{tag_name}\" tag"
      end
    end

    def render(context)
      "<iframe width=\"#{@width}\" height=\"#{@height}\" src=\"#{@host.call(@id)}\" frameborder=\"0\" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>"
    end
    
    Hosts.each_key { |key| Liquid::Template.register_tag key, self }

  end
end
