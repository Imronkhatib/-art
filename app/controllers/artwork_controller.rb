class ArtworkController < ApplicationController
  def index
    response = Unirest.get("https://www.rijksmuseum.nl/api/nl/collection?key=#{ENV['API_KEY']}&format=json&type=schilderij&f.normalized32Colors.hex=%20%23367614")

    render json: response.body
  end
end
