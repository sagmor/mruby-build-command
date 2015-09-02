# mruby-build

This is an experimental tooling to build projects easily written on MRuby.

## Usage

An example project works like this:

Create an MRuby build config (`config.rb`):
```ruby
MRuby::Build.new do |conf|
  toolchain :gcc

  enable_debug

  conf.gembox 'default'
end
```

Add a Gemfile:
```ruby
source 'https://rubygems.org'

gem 'mruby-source', github: 'sagmor/mruby', branch: 'gem'
gem 'mruby-build-command', github: 'sagmor/mruby-build-command'
```

Install dependencies with bundler:
```
bundle install
```

Build your customized MRuby build with:
```
bundle exec mruby-build config.rb
```

You can play with your build:
```
build/host/bin/mruby -e 'puts "Hello from #{MRUBY_VERSION}"'
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

