module Samurai
  module Tasks
    class TaskPolicy < Samurai::Tasks::ApplicationPolicy
      def show?
        user.admin? || user == record.user
      end

      def create?
        user.admin? || user == record.user
      end

      def update?
        user.admin? || user == record.user
      end

      def destroy?
        user.admin? || user == record.user
      end
    end
  end
end