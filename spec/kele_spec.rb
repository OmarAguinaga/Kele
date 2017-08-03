require "spec_helper"
require "httparty"

RSpec.describe Kele, type: :request do
  include HTTParty
  context '.kele' do
    describe '#initialize' do
      it "authenticates user" do
        client = Kele.new("jane@gmail.com", "abc123")
        expect(client.instance_variable.get(:@auth_token)).to be_a String
      end
    end
  end
end
