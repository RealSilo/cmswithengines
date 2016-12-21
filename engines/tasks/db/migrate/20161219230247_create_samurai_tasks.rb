class CreateSamuraiTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :samurai_tasks_tasks do |t|
      t.string :title
      t.text :content
      t.references :user, index: true
      t.references :contact, index: true

      t.timestamps
    end
    add_foreign_key :samurai_tasks_tasks, :samurai_users, column: :user_id
    add_foreign_key :samurai_tasks_tasks, :samurai_contacts_contacts, column: :contact_id
  end
end
