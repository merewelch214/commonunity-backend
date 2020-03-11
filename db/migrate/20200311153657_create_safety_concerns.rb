class CreateSafetyConcerns < ActiveRecord::Migration[6.0]
  def change
    create_table :safety_concerns do |t|
      t.references :user, null: false, foreign_key: true
      t.float :latitude
      t.float :longitude
      t.string :resolution_text
      t.datetime :resolved_at

      t.timestamps
    end
  end
end
