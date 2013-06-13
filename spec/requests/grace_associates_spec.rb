require 'spec_helper'

describe "GraceAssociates" do
  describe "GET /grace_associates" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get grace_associates_path
      response.status.should be(200)
    end
  end
end
