require 'rails_helper'

RSpec.describe "smokers/edit", type: :view do
  let(:smoker) {
    Smoker.create!(
      name: "MyString",
      cranky_level: "MyString"
    )
  }

  before(:each) do
    assign(:smoker, smoker)
  end

  it "renders the edit smoker form" do
    render

    assert_select "form[action=?][method=?]", smoker_path(smoker), "post" do

      assert_select "input[name=?]", "smoker[name]"

      assert_select "input[name=?]", "smoker[cranky_level]"
    end
  end
end
