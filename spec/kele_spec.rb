require "spec_helper"
require "httparty"

RSpec.describe Kele, type: :request do
  include HTTParty
  context '.kele' do
    describe '#initialize' do
      it 'authenticates user' do
        response = Kele.new("omar.aguinaga94@gmail.com", "pw")
        expect(response.instance_variable_get(:@auth_token)).to be_a String
      end

    end
  end
end
