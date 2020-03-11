class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :category
      t.string :title
      t.string :summary
      t.datetime :expires_at

      t.timestamps
    end
  end
end
