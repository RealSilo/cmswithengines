module Samurai
  class User < ApplicationRecord
    # Include default devise modules. Others available are:
    # :confirmable, :lockable, :timeoutable and :omniauthable
    devise :database_authenticatable, :registerable,
           :recoverable, :rememberable, :trackable, :validatable

    scope :ordered, -> { order(created_at: :desc) }

    def admin?
      admin
    end
  end
end
