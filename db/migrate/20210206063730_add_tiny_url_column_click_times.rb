class AddTinyUrlColumnClickTimes < ActiveRecord::Migration[6.1]
  def change
    add_column :tiny_urls, :click_times, :integer, default: 0
    add_column :tiny_urls, :name, :string
  end
end
