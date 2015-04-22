# CreateItems is the migration class to create items

class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.references :user, index: true

      t.timestamps
    end
  end
end
