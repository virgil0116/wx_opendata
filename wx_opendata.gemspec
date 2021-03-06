# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "wx_opendata/version"

Gem::Specification.new do |spec|
  spec.name          = "wx_opendata"
  spec.version       = WxOpendata::VERSION
  spec.authors       = ["Mot_Wu"]
  spec.email         = ["motevans412@gmail.com"]

  spec.summary       = %q{This is a gem for weapp open data API.小程序开放数据API}
  spec.description   = %q{This is a gem for weapp open data API.小程序开放数据API}
  spec.homepage      = "https://github.com/mozillo/wx_opendata"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  spec.test_files = Dir["spec/**/*"]

  spec.add_runtime_dependency 'rest-client', '~> 2.0', '>= 2.0.0'
  spec.add_runtime_dependency 'activesupport'

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
