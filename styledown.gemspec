require File.expand_path('../lib/styledown/version', __FILE__)

Gem::Specification.new do |s|
  s.name     = 'styledown'
  s.platform = Gem::Platform::RUBY
  s.version  = Styledown.version.dup
  s.date     = Time.now.strftime('%Y-%m-%d')
  s.summary  = %[...]

  s.files            = `git ls-files`.strip.split("\n")
  s.test_files       = `git ls-files -- test/*`.strip.split("\n")
  s.extra_rdoc_files = `git ls-files -- *.md`.strip.split("\n")
  s.executables      = Dir['bin/*'].map { |f| File.basename(f) }

  s.author   = 'Rico Sta. Cruz'
  s.email    = 'hi@ricostacruz.com'
  s.homepage = 'http://github.com/styledown/styledown-ruby'
  s.license  = 'MIT'

  s.add_dependency 'execjs', '>= 0', '< 3'
  s.add_development_dependency 'rake', '>= 0', '< 12'
end
