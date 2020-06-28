class CreateLions < ActiveRecord::Migration[6.0]
  def change
    create_table :lions do |t|

      t.timestamps
    end
  end
end
