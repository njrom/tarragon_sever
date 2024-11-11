class MakeAmountAndUnitRequired < ActiveRecord::Migration[7.2]
  def change
    change_column_null :ingredients, :amount, false
    change_column_null :ingredients, :unit, false
  end
end
