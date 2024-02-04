require "../sharkey"
require "json"

# Handles the `username` API calls, which just consists of `username/available`.
class Sharkey::Username
    def self.available(instance, username)
        payload = {"username" => username}
        endpoint = "username/available"
        return Sharkey.api_post(instance, payload.to_json, endpoint)
    end
end