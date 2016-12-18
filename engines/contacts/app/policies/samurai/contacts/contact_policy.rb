module Samurai
  module Contacts
    class ContactPolicy < ApplicationPolicy
      def show?
        user.admin? || user == record.user
      end
    end
  end
end
