class CreatePerformers < ActiveRecord::Migration
  def change
    create_table :performers do |t|
      t.string :name
      t.text :description
      t.string :soundcloud_url
      t.timestamps
    end
  end
end
