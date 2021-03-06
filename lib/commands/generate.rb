## This class allows the user to create a new profile for the selected element

require_relative 'CLICommand'
require_relative 'font_formatter'
require 'exceptions/FlagRequired'

class GenerateCLICommand < CLICommand
  def initialize(args = nil)
    if args[0]
      parse_option(args)
    else
      begin
      raise FlagRequired.new('[name] ', 'is required')
      rescue StandardError => e
        puts e.message
      end
    end
  end

  def parse_option(args)
    name = args[0]
    if args[0] == 'help'
      print_help
    else
      args[1] ? man_gen(name) : auto_gen(name)
    end
  end

  def man_gen(name)
    system("sudo vi /etc/apparmor.d/#{name}")
  end

  def auto_gen(name)
    system("sudo aa-genprof #{name}")
  end

  def print_help
    puts 'generate [name] <flag> - generate prof
                         with given name
      -m               - launch generate
                         in manual mode'
  end
end