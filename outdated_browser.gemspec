# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'outdated_browser/version'

Gem::Specification.new do |spec|
  spec.name          = "outdated_browser"
  spec.version       = OutdatedBrowser::VERSION
  spec.authors       = ["Sérgio Jadir Ribeiro Leite"]
  spec.email         = ["sergio_jadir@outlook.com"]

  spec.summary       = %q{Detectar browser}
  spec.description   = %q{Detecta browser não homologados e emite um alerta para o usuário.}
  spec.homepage      = "http://www.example.com"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "browser", "~> 2.0.2"
end
