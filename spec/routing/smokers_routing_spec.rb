require "rails_helper"

RSpec.describe SmokersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/smokers").to route_to("smokers#index")
    end

    it "routes to #new" do
      expect(get: "/smokers/new").to route_to("smokers#new")
    end

    it "routes to #show" do
      expect(get: "/smokers/1").to route_to("smokers#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/smokers/1/edit").to route_to("smokers#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/smokers").to route_to("smokers#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/smokers/1").to route_to("smokers#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/smokers/1").to route_to("smokers#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/smokers/1").to route_to("smokers#destroy", id: "1")
    end
  end
end
