class CreateApps < ActiveRecord::Migration
  def change
    create_table :apps do |t|
      t.string :name
      t.string :url
      t.string :image
      t.text :description
      t.string :github_url

      t.timestamps
    end
  end
end
