require "http/client"
require "./api/users"
require "./api/misc"
require "json"

# The `Sharkey` class is primarily for the library itself, and it
# holds the important method of `api_call()`, which sends an
# HTTP POST request to the API.
module Sharkey
  VERSION = "0.1.0"

  def self.api_post(instance : String, payload : String, endpoint : String)
    endpoint = "#{instance}/api/#{endpoint}"
    response = HTTP::Client.post(endpoint, body: payload, headers: HTTP::Headers{"Content-Type" => "application/json"})
    return response.body
  end

  def self.api_get(instance : String, endpoint : String)
    endpoint = "#{instance}/api/#{endpoint}"
    response = HTTP::Client.get endpoint
    puts endpoint
    return response.body
  end
end
