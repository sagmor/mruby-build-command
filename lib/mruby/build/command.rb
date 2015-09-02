require 'mruby/source'
require 'mruby/build/command/version'

module MRuby
  class BuildCommand
    def initialize(options)
      @config = options.fetch(:config)
      @output = options.fetch(:output){ File.join(Dir.pwd,'build') }
    end

    def exec
      env = {
        'MRUBY_CONFIG' => @config,
        'MRUBY_BUILD_DIR' => @output
      }

      command = [
        MRuby::Source.path.join('minirake'),
        '--rakefile', MRuby::Source.path.join('Rakefile')
      ].map(&:to_s)

      Kernel.exec(env,*command)
    end

    def self.parse(args)
      self.new(config: File.expand_path(args[0], Dir.pwd))
    end
  end
end
