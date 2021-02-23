class AddOwnerToAnimals < ActiveRecord::Migration[6.1]
  def change
    add_column :animals, :owner, :string
  end
end
