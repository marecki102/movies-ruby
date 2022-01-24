require 'rack/test'
require './index'

describe MyApp do
  include Rack::Test::Methods

  let(:app) { MyApp.new }

  context 'GET to /movies' do
    let(:response) { get '/movies' }

    it 'works' do
      expect(response.body).to eq '[]'
    end
  end
end