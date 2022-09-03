require 'thor'
require 'foodie/food'

module Foodie
  class CLI < Thor

   # bundle exec exe/foodie portray broccoli => "Gross!"
   desc 'portray ITEM', 'Determines if a piece of food is gross or delicious'
   def portray(name)
    puts Foodie::Food.portray(name)
   end

   # bundle exec exe/foodie pluralize -w Tomato => "Tomatoes"
   desc 'pluralize', 'Pluralize a word'
   method_option :word, aliases: '-w'
   # Here there’s the new method_option method we use which defines, well, a method option.
   # It takes a hash which indicates the details of an option how they should be returned to our task.
   def pluralize
    puts Foodie::Food.pluralize(options[:word])
   end
  end
end
