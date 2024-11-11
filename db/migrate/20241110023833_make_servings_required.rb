class MakeServingsRequired < ActiveRecord::Migration[7.2]
  def change
    change_column_null :recipes, :servings, false
  end
end
