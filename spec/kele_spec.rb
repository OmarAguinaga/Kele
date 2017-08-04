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
    
    describe '#get_me' do
     
=begin
     it 'has all top level keys' do
        response = Kele.new(ENV['BLOC_EMAIL'], ENV['BLOC_PASSWORD'])
        response = response.get_me
        keys = ["id", "slug", "name", "email", "title", "first_name", "last_name", "facebook_id", "url", "bio", "course", "current_enrollment", "quota", "quota_limit", "type", "status", "image_src", "large_image_src", "created_at", "facebook_profile_picture_url", "github_handle", "codecademy_handle", "time_zone"]
        keys.each do |key|
          expect(response).to include(key)
        end
      end
=end
      
      it 'returns an object' do
        response = Kele.new(ENV['BLOC_EMAIL'], ENV['BLOC_PASSWORD'])
        response = response.get_me
        expect(response.instance_variable_get(:@user_data)).to be_a Object
      end
    end
  end
end
