class CreateLions < ActiveRecord::Migration
  def change
    create_table :lions do |t|

      t.timestamps
    end
  end
end
