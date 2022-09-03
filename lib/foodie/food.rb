# frozen_string_literal: true

require 'active_support/inflector'

# To load this file, we’ll need to add a require line to 'lib/foodie.rb'
module Foodie
  class Food
    def self.portray(food)
      if food.downcase == 'broccoli'
        'Gross!'
      else
        'Delicious!'
      end
    end

    def self.pluralize(word)
      word.pluralize
    end
  end
end