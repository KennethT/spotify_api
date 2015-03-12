class SpotifyFetcher

  def initialize
    @spotify_data = Faraday.new(:url => 'https://api.spotify.com') do |faraday|
      faraday.request  :url_encoded             # form-encode POST params
      faraday.response :logger                  # log requests to STDOUT
      faraday.adapter  Faraday.default_adapter
    end
  end

  def album
    response = @spotify_data.get do |req|
      req.url "/v1/albums", {ids: "0lOn8nKk4dzzRfnCCCRbwp,6l2NmziISdcPAkf0ExBReL"}
      req.headers['Content-Type'] = 'application/json'
    end
     JSON.parse(response.body)
  end

end
