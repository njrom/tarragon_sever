# frozen_string_literal: true

module Types
  class IngredientInputType < Types::BaseInputObject
    argument :name, String, required: true
    argument :unit, String, required: true 
    argument :amount, Float, required: true
  end
end
