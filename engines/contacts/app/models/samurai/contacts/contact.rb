module Samurai
  module Contacts
    class Contact < ApplicationRecord
      belongs_to :user

      scope :ordered, -> { order(created_at: :desc) }

      def full_name
        [first_name, last_name].join(" ")
      end
    end
  end
end
