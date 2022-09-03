# frozen_string_literal: true

# To load this file, we’ll need to add a require line to lib/foodie.rb for it:

module Foodie
  class Food
    def self.portray(food)
      if food.downcase == 'broccoli'
        'Gross!'
      else
        'Delicious!'
      end
    end
  end
end