MRuby::Build.new do |conf|
  toolchain :gcc

  enable_debug

  conf.gembox 'default'
end
