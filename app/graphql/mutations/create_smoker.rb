class Mutations::CreateSmoker < Mutations::BaseMutation
    argument :name, String, required: true
    # argument :status, [Types::SmokerStatusEnum], required: false, default_value: "NORMAL"

    field :smoker, Types::SmokerType, null: false

    def resolve(name:)
        binding.pry
        smoker = Smoker.new(name: name)
        if smoker.save     
            {
                smoker: smoker
            }

        else
            {
                smoker: nil

            }

        end
        {smoker: smoker}
    end
end