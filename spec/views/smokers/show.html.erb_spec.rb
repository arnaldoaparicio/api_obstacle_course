require 'rails_helper'

RSpec.describe "smokers/show", type: :view do
  before(:each) do
    assign(:smoker, Smoker.create!(
      name: "Name",
      cranky_level: "Cranky Level"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Cranky Level/)
  end
end
