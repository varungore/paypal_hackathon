class CreatePrintSchedules < ActiveRecord::Migration
  def change
    create_table :print_schedules do |t|
      t.integer 	:curriculum_id
      t.timestamps 	:start_date
      t.integer		:status
      t.timestamps null: false
    end
  end
end
