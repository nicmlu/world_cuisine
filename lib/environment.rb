require 'pry'
require 'json'
require 'httparty'
require 'rest-client'
require 'exits'

require_relative "./world_cuisine/version"
require_relative "./world_cuisine/api"
require_relative "./world_cuisine/area"
require_relative "./world_cuisine/cli"
require_relative "./world_cuisine/meal"

module World_Cuisine
  class Error < StandardError; end
  # Your code goes here...
end
