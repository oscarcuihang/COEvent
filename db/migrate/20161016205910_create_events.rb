class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string :owner, null: false
      t.string :code, null: false
      t.string :name, null: false
      t.string :description
      t.string :location, null: false
      t.datetime :start_time, null: false
      t.datetime :end_time, null: false
      t.timestamps
    end
    add_reference :events, :user, foreign_key: true
  end
end
