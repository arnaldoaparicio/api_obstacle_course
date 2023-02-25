module Types
  class MutationType < Types::BaseObject
    field :create_smoker, mutation: Mutations::CreateSmoker
  end
end
