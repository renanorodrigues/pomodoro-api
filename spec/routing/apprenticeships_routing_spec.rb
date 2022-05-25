require "rails_helper"

RSpec.describe ApprenticeshipsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/apprenticeships").to route_to("apprenticeships#index")
    end

    it "routes to #show" do
      expect(get: "/apprenticeships/1").to route_to("apprenticeships#show", id: "1")
    end


    it "routes to #create" do
      expect(post: "/apprenticeships").to route_to("apprenticeships#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/apprenticeships/1").to route_to("apprenticeships#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/apprenticeships/1").to route_to("apprenticeships#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/apprenticeships/1").to route_to("apprenticeships#destroy", id: "1")
    end
  end
end
