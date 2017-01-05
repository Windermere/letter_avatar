lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'letter_avatar/version'

Gem::Specification.new do |spec|
  spec.name          = 'letter_avatar'
  spec.version       = LetterAvatar::VERSION
  spec.authors       = ['Discourse Developers', 'Krzysiek Szczuka', 'Mateusz Mróz', 'Jason Lee']
  spec.email         = ['kszczuka@gmail.com']
  spec.description   = "Gem for creating letter avatar from user's name"
  spec.summary       = 'Create nice initals avatars from your users usernames'
  spec.homepage      = 'https://github.com/ksz2k/letter_avatar'
  spec.license       = 'GPL'
  spec.files         = Dir.glob('lib/**/*') + %w(README.md CHANGELOG.md Roboto-Medium mask.png)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
