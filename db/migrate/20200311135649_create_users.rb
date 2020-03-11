class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.boolean :is_manager
      t.string :name
      t.string :team
      t.string :phone_number
      t.string :image_url

      t.timestamps
    end
  end
end
