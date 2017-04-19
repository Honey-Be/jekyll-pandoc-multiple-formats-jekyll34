# encoding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll-pandoc-multiple-formats-jekyll34/version'

Gem::Specification.new do |gem|
  gem.name          = 'jekyll-pandoc-multiple-formats-jekyll34'
  gem.version       = JekyllPandocMultipleFormats::VERSION
  gem.authors       = ['윤병익']
  gem.email         = ['by_yeun@daum.net']
  gem.description   = %q{This is a fork of the original "jekyll-pandoc-multiple-formats" to update dependencies. This jekyll plugin was inspired by
  jekyll-pandoc-plugin but it was changed to generate multiple outputs,
  rather than just using pandoc to generate jekyll html posts. Besides,
  it doesn't require the 'pandoc-ruby' gem.}
  gem.summary       = %q{Use pandoc on jekyll to generate posts in multiple formats}
  gem.license       = 'MIT'

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ['lib']

  gem.add_dependency('jekyll', '>= 3.4')
  gem.add_dependency('pdf_info', '>= 0.5')
  gem.add_dependency('rtex', '>= 2.1')
  gem.add_development_dependency('rake', '>= 12.0.0')
  gem.add_development_dependency('minitest', '>= 5.10.0')
  gem.add_development_dependency('shoulda', '~> 3.5.0')
end
