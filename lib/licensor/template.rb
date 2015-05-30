require "mustache"

module Licensor
  class Template
    EXTNAME = ".mustache"

    def initialize
      @templates = find_templates
      @licenses = @templates.map{|t| File.basename(t, EXTNAME) }
      @template_table = Hash[@licenses.zip(@templates)]
    end

    attr_reader :licenses

    def render(license, name, year)
      unless @licenses.include?(license)
        raise ArgumentError, "Given license `#{license}' is not supported. Try `--list' option to see all available licenses."
      end

      Mustache.render(File.read(@template_table[license]), name: name, year: year)
    end

    private
    def find_templates
      Dir["lib/licensor/templates/*#{EXTNAME}"]
    end
  end
end
