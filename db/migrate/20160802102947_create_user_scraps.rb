class CreateUserScraps < ActiveRecord::Migration
  def change
    create_table :user_scraps do |t|

      t.integer :user_id
      t.integer :cafe_id

      t.timestamps null: false
    end
  end
end
