class CreateSounds < ActiveRecord::Migration
  def change
    create_table :sounds do |t|
      t.string :title
      t.string :soundcloud_url

      t.timestamps null: false
    end
  end
end
