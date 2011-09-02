require 'yaml'
require 'botsy'

require 'open-uri'
require 'nokogiri'

campfire = YAML.load_file("campfire.yml")

# see https://github.com/seejohnrun/botsy for examples
Botsy::Bot.new(campfire["subdomain"], campfire["token"], campfire["room"]) do
  
  hear(/(devbot|dev bot)/i) do |data|
    say "Ride on."
  end
  
  hear(/(https?:\/\/\S+)/i) do |data, mdata|
    begin
      url = mdata[1]
      doc = Nokogiri::HTML(open(url))
      title = doc.css('title').first.content
      say "#{title} #{url}"
    rescue
    end
  end
  
  hear(/.*(going down|happening|news|up to)\?/i) do |data|
    say "I caught my first tube today."
  end
  
end