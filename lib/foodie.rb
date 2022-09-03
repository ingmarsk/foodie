# frozen_string_literal: true

require_relative 'foodie/version'
require 'foodie/food'

# The main file to define our gem’s code.
# This is the file that will be required by Bundler when our gem’s is loaded.
# This file defines a module which we can use as a namespace for all our gem’s code.
# It’s best practice to put our code (classes, etc.) for our gem in "lib/foodie"
module Foodie
  class Error < StandardError; end
  # Your code goes here...
end
