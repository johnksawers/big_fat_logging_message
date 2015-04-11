module SlightlyBetterDebugLogging
  class Railties < ::Rails::Railtie
    initializer 'Add Rails logger to SlightlyBetterDebugLogging' do
      SlightlyBetterDebugLogging.logger = Rails.logger
    end
  end
end