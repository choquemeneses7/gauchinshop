class AddVisitsCountToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :visits_count, :integer
  end
end
