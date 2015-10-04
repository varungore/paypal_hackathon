class CreateCurriculums < ActiveRecord::Migration
  def change
    create_table :curriculums do |t|

      t.string  :name
      t.string	:file_url
      t.integer	:duration
      
      t.timestamps null: false
    end
  end
end
