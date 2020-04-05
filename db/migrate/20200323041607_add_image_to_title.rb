class AddImageToTitle < ActiveRecord::Migration[5.2]
  def change
    add_column :titles, :image, :string
  end
end
