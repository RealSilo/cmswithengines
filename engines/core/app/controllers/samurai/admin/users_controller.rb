module Samurai
  module Admin
    class UsersController < ApplicationController
      before_action :authorize_admin

      def index
         @users = Samurai::User.ordered
      end

      private

      def authorize_admin
        authorize Samurai::User, :admin?
      end
    end
  end
end