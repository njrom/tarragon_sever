class RemoveDateCreated < ActiveRecord::Migration[7.2]
  def change
    remove_column :recipes, :creation_date, :date
  end
end
