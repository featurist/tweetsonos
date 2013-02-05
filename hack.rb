require 'sonos'
require 'json'
require 'rest-client'

while (true)
  system = Sonos::System.new
  speaker = system.speakers.first

  search = RestClient.get "http://search.twitter.com/search.json?q=%23playonmysonos"
  json = JSON.parse(search)

  url = json["results"].first["text"][/http[^\s]+/]
  actual_url = RestClient.get("http://therealurl.appspot.com/?url=#{url}")

  speaker.play actual_url
  speaker.play
  
  sleep 60
end