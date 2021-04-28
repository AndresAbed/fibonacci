require "rails_helper"

RSpec.describe "Api::V1::Mains", type: :routing do
  describe 'routing' do
    it 'routes to #fibonacci' do
      expect(post: 'api/v1/fibonacci').to route_to('api/v1/main#fibonacci')
    end
  end
end
