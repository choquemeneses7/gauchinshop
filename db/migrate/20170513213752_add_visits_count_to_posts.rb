class AddVisitsCountToPosts < ActiveRecord::Migration[5.0]
  def change
    add_column :posts, :visits_count, :integer
  end
end
