require 'slightly_better_debug_logging/version'
require 'slightly_better_debug_logging/railtie' if defined? Rails

module SlightlyBetterDebugLogging
  def self.logger=(logger)
    @@logger = logger
  end

  def debug_message(message, debug_target = nil)
    @@logger.debug '*'*50
    @@logger.debug message
    @@logger.debug debug_target.inspect if debug_target
    @@logger.debug '*'*50
  end
end
