class CreateMeerkats < ActiveRecord::Migration[6.0]
  def change
    create_table :meerkats do |t|

      t.timestamps
    end
  end
end
