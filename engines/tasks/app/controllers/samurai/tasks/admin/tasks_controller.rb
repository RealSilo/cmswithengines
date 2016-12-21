require_dependency "samurai/application_controller"

module Samurai
  module Tasks
    module Admin
      class TasksController < Samurai::Tasks::ApplicationController
        before_action :authorize_admin

        def index
          @tasks = Samurai::Tasks::Task.ordered
        end

        def authorize_admin
          authorize Samurai::User, :admin?
        end
      end
    end
  end
end
