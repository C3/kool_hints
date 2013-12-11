module KoolHints
  class Engine < ::Rails::Engine
    initializer 'kool_hints.action_controller' do |app|
      ActiveSupport.on_load :action_controller do
        helper KoolHints::ApplicationHelper
      end
    end
  end
end
