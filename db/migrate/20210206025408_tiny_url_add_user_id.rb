class TinyUrlAddUserId < ActiveRecord::Migration[6.1]
  def change
    add_column :tiny_urls, :user_id, :integer
  end
end
