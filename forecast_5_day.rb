# This is a weather app that allows a user to input their location (zip code, city, state, etc.), hit submit, 
# and then, depending on real-time data that you will source from a public API, # see a message customized 
# to what the weather is like where they live.

# Require the gem 'yahoo_weatherman', '~> 2.0.0'
require 'yahoo_weatherman'

# Step 1 User inputs their location
	# Accept the zipcode 
	puts "Enter zip:"
	location = gets.chomp
	
# Step 2 Use a puclic API to find out what the weather is in the user's zipcode
def determine_weather(location)
	client = Weatherman::Client.new
	response = client.lookup_by_location(location)

end

# Step 3 Tell them the weather
# Call method to determine the weather in the zip code
response = determine_weather(location)

# Step 4 Provide the weather forecast for the next 5 days
puts "*****Five-Day Forecast*****"
response.forecasts.each do |forecast|
  puts forecast['day'].to_s + ' is going to be ' + forecast['text'].downcase +
   ' with a low of ' + forecast['low'].to_s + ' Degrees Celsius and a high of ' + forecast['high'].to_s + ' Degrees Celsius.'
end
# Show raw forecast data
puts response.forecasts

