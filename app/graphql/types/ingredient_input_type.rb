# frozen_string_literal: true

module Types
  class IngredientInputType < Types::BaseInputObject
    argument :name, String, required: true
  end
end
