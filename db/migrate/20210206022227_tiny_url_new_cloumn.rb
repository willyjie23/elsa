class TinyUrlNewCloumn < ActiveRecord::Migration[6.1]
  def change
    add_column :tiny_urls, :base_url, :string
  end
end
