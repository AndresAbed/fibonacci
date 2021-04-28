require 'rails_helper'

RSpec.describe "Api::V1::Mains", type: :request do
  let(:spec_path) { "/api/v1/fibonacci" }
  let(:size) { 10 }
  let(:n) { 3 }

  describe "POST fibonacci" do
    it "params are missing" do
      expect{ post(spec_path, {}) }.to raise_error ActionController::ParameterMissing
    end

    it "params are present" do      
      post spec_path, params: {params: {size: size, n: n}}
      expect(response).to be_successful
    end
    
    it "returns the correct value" do
      post spec_path, params: {params: {size: size, n: n}}
      parsed_response = JSON.parse(response.body)
      expect(parsed_response["status"]).to eq("Success")
      expect(parsed_response["value"]).to eq(2)
    end
  end
end
