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
puts response.condition
puts response.condition['text']
# Case statement to create a message for weather conditions
case (response.condition['text'].downcase)
 when "sunny"
  puts "It's 85 degrees and sunny!"

 when "cloudy"
   puts "55 degrees and cloudy!"

 when "rain"
   puts "60 degrees and crazy rainy!"

  when "light rain"
   puts "60 degrees and light rain!"

  when "fair"
   puts "60 degrees and partly cloudy!"

  when "partly cloudy"
   puts "70 degrees and partly cloudy!"

 when "snowy"
    puts "32 degrees and super snowy!"

  else
    puts "A mix of sun, rain, or clouds!"
end




# Step 4 Provide the weather forecast for the next 5 days

