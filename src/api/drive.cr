require "../sharkey"
require "json"

# The `Drive` class handles everything related to Sharkey's 
# "Drive" storage system thingy. The majority, if not all,
# of methods in this class require an API/auth key.
class Sharkey::Drive
    # List the files in a user's drive.
    def self.files(instance, bearerAuth, limit = 10, sort = "+createdAt")
        payload = {"limit" => limit, "sort" => sort}.to_json
        endpoint = "drive/files"
        return Sharkey.api_auth_post(instance, payload, endpoint, bearerAuth)
    end
end