class AddAdminToSamuraiUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :samurai_users, :admin, :boolean
  end
end
