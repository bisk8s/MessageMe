class AddImageToLetters < ActiveRecord::Migration
  def change
  	add_column :letters,:image_url,:string
  end
end
