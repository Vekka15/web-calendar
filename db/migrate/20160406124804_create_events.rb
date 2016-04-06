class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.datetime :start
      t.datetime :end
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
