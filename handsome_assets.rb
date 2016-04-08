module HandsomeAssets

  ReactJSXSprockets.configure do |config|
    config.extensions = %w( jsx )
  end

  def self.environment root_path
    environment = Sprockets::Environment.new root_path
    environment.append_path 'widgets'
    environment.append_path 'build'
    environment.append_path 'styles'
    environment
  end
end
