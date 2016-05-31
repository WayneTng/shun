class HomeController < ApplicationController
  def index
    iapple = ITunesSearchAPI.search(:term => "The Killers", :country => "US", :media => "music")
    itune = ITunesSearchAPI.lookup(:id => 284910350)
    json = HTTParty.get('https://itunes.apple.com/us/rss/customerreviews/id=298032129/json')
    binding.pry
  end
end
