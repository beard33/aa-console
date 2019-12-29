## This class extending the StandardError define a custom exception
# to be raised when is typed a non-existent command

class CommandNotFound < StandardError

  def initialize(command, message)
    err_msg = 'ERROR: ' + command + message
    super(err_msg)
  end
end