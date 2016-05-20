class CreateAppsUsers < ActiveRecord::Migration
  def change
    create_table :apps_users do |t|
      t.integer :user_id
      t.integer :app_id

      t.timestamps null: false
    end
    add_index :apps_users, :user_id
    add_index :apps_users, :app_id
  end
end
