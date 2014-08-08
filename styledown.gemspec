require './lib/styledown/version'

Gem::Specification.new do |s|
  s.name = "styledown"
  s.version = Styledown.version
  s.summary = %[...]
  s.description = %[...]
  s.authors = ["Rico Sta. Cruz"]
  s.email = ["hi@ricostacruz.com"]
  s.homepage = "http://github.com/styledown/styledown-ruby"
  s.files = `git ls-files`.strip.split("\n")
  s.executables = Dir["bin/*"].map { |f| File.basename(f) }

  s.add_dependency "execjs", "> 2.0.0"
end
