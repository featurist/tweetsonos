require 'sonos'

system = Sonos::System.new
speaker = system.speakers.first

speaker.play 'http://dl.dropbox.com/u/7845229/Pop.mp3'
speaker.play


http://search.twitter.com/search.json?q=%23badboy