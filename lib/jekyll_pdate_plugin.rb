# -*- coding: utf-8 -*-
require 'jekyll_pdate_plugin/version'
require 'parsi-date'

module Jekyll
  module PdatePlugin

    def pdate(datetime, format = '%A %d %B %Y')
      pdate_to_string(datetime,format)
    end

    def pdate_to_string(datetime, format = '%A %d %B %Y')
      config_format = @context.registers[:site].config['pdate_filter']
      format = config_format unless config_format.nil?
      datetime.to_parsi.strftime format
    end

    def pnumber(number)
      number.to_s.gsub(/[0-9]/,'1'=>'۱','2'=>'۲','3'=>'۳','4'=>'۴','5'=>'۵','6'=>'۶','7'=>'۷','8'=>'۸','9'=>'۹','0'=>'۰')
    end
  end
end
Liquid::Template.register_filter(Jekyll::PdatePlugin)
