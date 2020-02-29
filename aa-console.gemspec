lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "version"


Gem::Specification.new do |spec|
  spec.name          = "aa-console"
  spec.version       = 0.1
  spec.authors       = ["Andrea"]
  spec.email         = ["andreaguzzon.junk@gmail.com"]
  spec.licenses      = ["GPL-3.0"]

  spec.summary       ="A simple CLI-tool to manage basic AppArmor operations"
  spec.description   = "aa-console is a (very) simple CLI-tool to manage basic apparmor operations such as searching for a profile, changing
                        the status of an existing one, creating a new one or easily read the logs"
  spec.homepage      = "https://github.com/beard33/aa-console"


  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ["lib/commands/font_formatter.rb", "lib/prompt.rb", "lib/commands/CLICommand.rb", "lib/commands/generate.rb", "lib/commands/list.rb", "lib/commands/search.rb", "lib/commands/log_search.rb", "lib/commands/change_prof.rb",
                        "lib/exceptions/FlagRequired.rb", "lib/exceptions/CommandNotFound.rb", "lib/helper.rb"]
  spec.executables   = ["aa-console"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "readline", "~> 0.0.1"
end
