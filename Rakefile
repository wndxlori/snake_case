$:.unshift("/Library/RubyMotion/lib")
require 'motion/project/template/ios'

require 'bundler'
Bundler.require(:development)

require 'snake_case'

module Motion
  module Project
    class Config
      def spec_files=(spec_files)
        @spec_files = spec_files
      end
    end
  end
end

Motion::Project::App.setup do |app|
  app.name = 'snake_case'
  app.version = SnakeCase::VERSION
  app.redgreen_style = :full
  app.detect_dependencies = true
  
  app.spec_files -= Dir.glob('./spec/**/*.rb')
  app.spec_files += Dir.glob('./spec/**/*.rb')
end