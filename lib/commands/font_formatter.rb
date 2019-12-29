## This file contains the necessary commands to change font size and
# font colors when putting it to command line interface

module SetColor
  def self.red(string)
    "\e[31m#{string}\e[0m"
  end

  def self.green(string)
    "\e[32m#{string}\e[0m"
  end

  def self.yellow(string)
    "\e[33m#{string}\e[0m"
  end
end

module SetFont
  def self.bold(string)
    "\e[1m#{string}\e[0m"
  end

  def self.underline(string)
    "\e[4m#{string}\e[0m"
  end
end