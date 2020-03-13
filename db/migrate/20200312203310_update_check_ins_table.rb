class UpdateCheckInsTable < ActiveRecord::Migration[6.0]
  def change
    add_column :check_ins, :checked_in_at, :timestamp
  end
end
