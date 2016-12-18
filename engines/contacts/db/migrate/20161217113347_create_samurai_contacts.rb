class CreateSamuraiContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :samurai_contacts_contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :company
      t.string :email
      t.string :phone
      t.references :samurai_user, foreign_key: true

      t.timestamps
    end
  end
end
