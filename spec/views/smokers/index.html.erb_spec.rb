require 'rails_helper'

RSpec.describe "smokers/index", type: :view do
  before(:each) do
    assign(:smokers, [
      Smoker.create!(
        name: "Name",
        cranky_level: "Cranky Level"
      ),
      Smoker.create!(
        name: "Name",
        cranky_level: "Cranky Level"
      )
    ])
  end

  it "renders a list of smokers" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new("Name".to_s), count: 2
    assert_select cell_selector, text: Regexp.new("Cranky Level".to_s), count: 2
  end
end
