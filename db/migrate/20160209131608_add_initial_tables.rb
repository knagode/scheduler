class AddInitialTables < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :email
      t.timestamps null: false
    end

    create_table :students do |t|
      t.string :email
      t.timestamps null: false
    end

    create_table :slots do |t|
      t.datetime :start_at
      t.datetime :stop_at
      t.integer :teacher_id
      t.timestamps null: false
    end

    create_table :lessons do |t|
      t.integer  :slot_id
      t.integer  :student_id
      t.datetime :start_at
      t.datetime :stop_at
      t.timestamps null: false
    end
  end
end
