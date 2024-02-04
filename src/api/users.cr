require "../sharkey"
require "json"

# The `Users` class controls all API calls for the Sharkey API that
# are named `users/<call>`. Pretty much everything in here is for
# users and user-related things.
class Sharkey::Users
  # Get a list of a user's achievements.
  #
  # Request type: `POST`
  # ## Example Usage of `users/achievements`
  # ```
  # resp = Sharkey::Users.achievements("https://kitsunes.club", "9p332xwemp")
  # x = JSON.parse(resp)
  # u_timestamp = x[0]["unlockedAt"]
  # puts "Valixym completed the Sharkey tutorial at #{u_timestamp}"
  # # Ex: "Valixym completed the Sharkey tutorial at 1706860800"
  # ```
  def self.achievements(instance, userId)
    endpoint = "users/achievements"
    payload = {
      "userId" => userId,
    }.to_json

    return Sharkey.api_post(instance, payload, endpoint)
  end
end
