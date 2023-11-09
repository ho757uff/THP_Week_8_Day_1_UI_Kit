class AddDetailsToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :start_date, :datetime
    add_column :events, :duration, :integer
    add_column :events, :price, :decimal
  end
end
