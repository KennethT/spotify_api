class WelcomeController < ApplicationController

  def index
    @sf = SpotifyFetcher.new
    @sf2 = @sf.album["albums"].map {|image| image["images"]}
    # @sf3 = @sf2.map {|x| x["url"]}
    # @sf4 = @sf3[1]

  end

end
