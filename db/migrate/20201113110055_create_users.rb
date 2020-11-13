class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :provider, null: false
      t.string :uid, null: false
      t.string :name
      t.string :location
      t.string :image_url
      t.string :url

      t.timestamps
    end

    add_index :users, :provider
    add_index :users, :uid
    add_index :users, [:provider, :uid], unique: true
  end
end
