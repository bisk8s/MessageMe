class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :from
      t.text :content

      t.timestamps null: false
    end
  end
end
