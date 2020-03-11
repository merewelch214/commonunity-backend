class CreateCheckIns < ActiveRecord::Migration[6.0]
  def change
    create_table :check_ins do |t|
      t.references :user, null: false, foreign_key: true
      t.string :location
      t.string :location_text

      t.timestamps
    end
  end
end
