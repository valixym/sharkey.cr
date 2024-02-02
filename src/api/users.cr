require "../sharkey"
require "json"

# The `Users` class controls all API calls for the Sharkey API that
# are named `users/<call>`. Pretty much everything in here is for
# users and user-related things.
class Sharkey::Users
    # Get a list of a user's achievements.
    #
    # Request type: `POST`
    def self.achievements(instance, userId)
        endpoint = "users/achievements"
        payload = {"userId" => userId}.to_json
        return Sharkey.api_post(instance, payload, endpoint)
    end
end
