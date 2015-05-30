require "thor"

module Licensor
  class CLI < Thor
    def initialize(*args)
      super

      @template = Template.new
    end

    class_option :year, type: :numeric, aliases: :y, desc: "The year to use. Default value is this year."
    class_option :name, type: :string, aliases: :n, desc: "The fullname to use. Default value is obtained from git."

    desc "show <LICENSE>", "Show a license text."
    def show(license)
      puts text(license)
    end

    desc "create <LICENSE>", "Create a license file."
    option :filename, type: :string, aliases: :f, desc: "The output filename. Default value is `LICENSE'."
    def create(license)
      filename = options[:filename] || DefaultSetting.filename

      open(filename, "w") do |f|
        f.puts text(license)
      end
    end


    map %w[--list -l] => :__print_supported_licenses
    desc "-l, [--list]", "See all available licenses."
    def __print_supported_licenses
      puts @template.licenses
    end


    map %w[--version -v] => :__print_version
    desc "-v, [--version]", "Print the version."
    def __print_version
      puts VERSION
    end


    no_tasks do
      def text(license)
        name = options[:name] || DefaultSetting.name
        year = options[:year] || DefaultSetting.year

        @template.render(license, name, year)
      rescue
        abort($!.message)
      end
    end
  end
end
