
Gem::Specification.new do |s|
  s.name = "rroar"
  s.homepage = ''
  s.license = "GPLv3"
  s.authors = ["Arnold Krille"]
  s.summary = ""
  s.description = ""
  s.email = "arnold@arnoldarts.de"
  s.require_path = "lib"
  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- {spec,features}/*`.split("\n")

  s.version = '0.1.0'
  s.platform = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.0.0'
  #s.required_rubygems_version = '>= 1.3.5'

  # Development dependencies are listed in the Gemfile.
end
