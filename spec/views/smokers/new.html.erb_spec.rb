require 'rails_helper'

RSpec.describe "smokers/new", type: :view do
  before(:each) do
    assign(:smoker, Smoker.new(
      name: "MyString",
      cranky_level: "MyString"
    ))
  end

  it "renders new smoker form" do
    render

    assert_select "form[action=?][method=?]", smokers_path, "post" do

      assert_select "input[name=?]", "smoker[name]"

      assert_select "input[name=?]", "smoker[cranky_level]"
    end
  end
end
