require 'readline'

class Prompt
  def initialize
    @cmd_list = %w[list search generate log_search
                   change_prof all enforce complain clear
                   help exit] # TODO: add commands
    complete_proc
  end

  def complete_proc
    comp = proc { |cmd| @cmd_list.grep(/^#{Regexp.escape(cmd)}/) }
    Readline.completion_append_character = ' '
    Readline.completion_proc = comp
  end

  def checks
    puts 'Starting...'
    sleep(0.5)
    print 'Checking sudo permissions...'
    unless self.check_uid
      puts SetColor.red('[ X ]')
      puts 'Please run as sudo'
      exit 1
    end
    puts SetColor.green('[ ✓ ]')
    print 'Checking if AA is enabled...'
    unless self.check_aa
      puts SetColor.red('[ X ]')
      puts 'Please install and enable AppArmor'
    end
    puts SetColor.green('[ ✓ ]')
  end


  def check_aa
    flag = `sudo aa-status`
    flag.lines[0].split[3].eql?('loaded.')
  end

  # to be called in the main class
  def check_uid
    Process.uid.zero?
  end
end



