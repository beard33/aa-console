# This class define a custom exception to be
# raised when is typed a command without a necessary flag

class FlagRequired < StandardError

  def initialize (flag, message)
    err_msg = 'Check arguments: ' + flag + message
    super(err_msg)
  end
end