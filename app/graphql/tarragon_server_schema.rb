# frozen_string_literal: true

class TarragonServerSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  introspection true
end
