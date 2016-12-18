Samurai::User.class_eval do
 has_many :contacts, class_name: Samurai::Contacts::Contact, foreign_key: :user_id
end
