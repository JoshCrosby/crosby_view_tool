
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "crosby_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "crosby_view_tool"
  spec.version       = CrosbyViewTool::VERSION
  spec.authors       = ["JoshCrosby"]
  spec.email         = ["joshdcrosby@gmail.com"]

  spec.summary       = %q{First RubyGem to display copyright and name}
  spec.description   = %q{This is nothing fancy, just a gem to display current year for copyright and name}
  spec.homepage      = "https://github.com/JoshCrosby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
