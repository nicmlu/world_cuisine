require "httparty"
require "pry"
require_relative "world_cusine/version"
require_relative "world_cusine/api"
require_relative "world_cusine/area"
require_relative "world_cusine/cli"
require_relative "world_cusine/meal"

module World_Cusine
  class Error < StandardError; end
  # Your code goes here...
end
