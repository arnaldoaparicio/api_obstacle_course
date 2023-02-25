require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to test the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator. If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails. There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.

RSpec.describe Mutations::CreateSmoker, type: :request do
  
  it 'creates a smoker' do
    stash = "Gail"
    post '/graphql', params: { query: query(name: stash) }
    json = JSON.parse(response.body, symbolize_names: true)
    binding.pry
  end



  def query(name:)
    <<~GRAPHQL
    mutation {
      createSmoker(input: { name: #{name} }) {
        smoker {
          id
          name
        }
      }
    }
      GRAPHQL
  end
end
