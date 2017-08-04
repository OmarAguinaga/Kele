require "spec_helper"
require "httparty"

RSpec.describe Kele, type: :request do
  include HTTParty
  context '.kele' do
    describe '#initialize' do
      it 'displays error if wrong credentials' do
        expect{Kele.new('some_inavlid@email.com', 'password')}.to raise_error("Invalid email or password")
      end

      it 'authenticates user' do
        response = Kele.new(ENV['BLOC_EMAIL'], ENV['BLOC_PASSWORD'])
        expect(response.instance_variable_get(:@auth_token)).to be_a String
      end
    end
  end
end
