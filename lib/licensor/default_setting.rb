module Licensor
  module DefaultSetting
    def self.name
      name = `git config --get user.name` rescue nil
      raise "Default name cannot be obtained from git. Try `-n' option instead." unless $?.success?
      name.chomp
    end

    def self.year
      Time.now.year.to_s
    end

    def self.filename
      "LICENSE"
    end
  end
end
