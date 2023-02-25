module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    field :smokers, [Types::SmokerType], null: false
    
        field :smoker, Types::SmokerType, null: false do
          argument :id, ID, required: true
        end
    
      def smokers
        Smoker.all
      end


      def smoker(id:)
        Smoker.find(id)
      end
  end
end
