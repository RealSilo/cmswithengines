require_dependency "samurai/application_controller"

module Samurai
  module Contacts
    module Admin
      class ContactsController < Samurai::Contacts::ApplicationController
        before_action :authorize_admin

        def index
          @contacts = Samurai::Contacts::Contact.ordered
        end

        def authorize_admin
          authorize Samurai::User, :admin?
        end
      end
    end
  end
end
