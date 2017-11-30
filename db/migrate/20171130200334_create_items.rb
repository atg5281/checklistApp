class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.string :name
      t.boolean :is_checked

      t.timestamps
    end
  end
end
