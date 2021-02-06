class CreateTinyUrls < ActiveRecord::Migration[6.1]
  def change
    create_table :tiny_urls do |t|
      t.string :reurl

      t.timestamps
    end
  end
end
