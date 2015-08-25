require 'bundler/setup'
require 'mruby/build/command'

describe MRuby::BuildCommand do
  describe '#initialize' do
    it "requires a config file" do
      expect{
        MRuby::BuildCommand.new({})
      }.to raise_error(KeyError)

      expect{
        MRuby::BuildCommand.new({config: 'some/path.rb' })
      }.not_to raise_error
    end
  end
end
