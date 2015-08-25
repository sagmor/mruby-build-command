require 'mruby/source'
require 'mruby/build/command/version'

module MRuby
  class BuildCommand
    def initialize(options)
      @config = options.fetch(:config)
      @minirake = options.fetch(:minirake){ true }
      @output = options.fetch(:output){ File.join(Dir.pwd,'build') }
    end

    def exec

    end

    def self.parse(args)
    end
  end
end
