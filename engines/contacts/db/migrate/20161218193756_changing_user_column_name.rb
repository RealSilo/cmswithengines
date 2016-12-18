class ChangingUserColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :samurai_contacts_contacts, :samurai_user_id, :user_id
  end
end
