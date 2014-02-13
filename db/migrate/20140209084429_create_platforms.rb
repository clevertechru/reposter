class CreatePlatforms < ActiveRecord::Migration
  def change
    create_table :platforms do |t|
      t.integer :user_id
      t.string  :title
      t.string  :description
      t.integer :category_id
      t.integer :type_id      # destination(to publish), source(donor)
      t.string  :token
      t.integer :service_id
      t.integer :state

      t.timestamps
    end

    add_index :platforms, :user_id
    add_index :platforms, [:user_id, :type_id]
    add_index :platforms, :service_id
    add_index :platforms, :category_id
  end
end
