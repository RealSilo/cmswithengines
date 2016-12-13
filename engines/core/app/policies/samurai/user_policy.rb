module Samurai
  class UserPolicy < ApplicationPolicy
    def admin?
      user.admin?
    end
  end
end