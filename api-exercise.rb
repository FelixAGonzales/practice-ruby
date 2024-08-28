require 'http'

response = HTTP.get("https://data.ny.gov/resource/qq4h-8p86.json")

nytimes = response.parse

pp nytimes 

nytimes.each do |location|
  puts location["county"]
end