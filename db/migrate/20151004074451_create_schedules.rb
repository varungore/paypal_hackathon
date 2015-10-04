class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|

      t.integer :site_id
      t.integer :curriculum_id
      t.integer	:user_id
      t.datetime :start_date

      t.timestamps null: false
    end
  end
end

  