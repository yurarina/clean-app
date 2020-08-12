class CreateTodos < ActiveRecord::Migration[5.0]
  def change
    create_table :todos do |t|
      t.string :title
      t.string :kitchen,                  foreign_key:true
      t.string :bathroom,                 foreign_key:true
      t.string :entrance,                 foreign_key:true
      t.string :room,                     foreign_key:true
      t.string :outside,                  foreign_key:true
      t.string :state,                    null:false
      t.date :limit_date
      t.string :user_id,                  null:false,foreign_key:{to_table: :users}

      t.timestamps
    end
  end
end