module Samurai
  module Admin
    class AdminController < ApplicationController
      before_action :authorize_admin

      def index
      end

      private

      def authorize_admin
        authorize Samurai::User, :admin?
      end
    end
  end
end
