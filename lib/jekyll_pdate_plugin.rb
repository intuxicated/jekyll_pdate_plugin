require "jekyll_pdate_plugin/version"
require 'parsi-date'

module Jekyll
  module PdatePlugin
    def pdate_to_string(datetime)
      pdate_format = @context.registers[:site].config['pdate_filter']
      if pdate_format == nil
        pdate_format = "%A %d %B %Y"
      end
      datetime.to_parsi.strftime pdate_format
    end
  end
end
Liquid::Template.register_filter(Jekyll::PdatePlugin)
