class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|

      t.string	:name
      t.integer	:site_code
      t.string	:city
      t.string	:state
      t.string	:address1
      t.string	:address2
      t.integer	:pin
      t.timestamps null: false
    end
  end
end
