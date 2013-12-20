module KoolHints
  class Engine < ::Rails::Engine
    initializer 'kool_hints.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper KoolHints::ApplicationHelper
      end
    end

    config.generators do |g|
      g.test_framework :rspec
      g.integration_tool :rspec
    end
  end
end
