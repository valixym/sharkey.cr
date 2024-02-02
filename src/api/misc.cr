require "../sharkey"
require "json"

# The `Misc` class is for all API calls which don't have a
# designated section. For example, `get-online-users-count`
# doesn't belong to a category, so it would be placed here.
class Sharkey::Misc

  # Get the number of users currently online.
  #
  # Request type: `GET`
  def self.get_online_users_count(instance)
    endpoint = "get-online-users-count"
    return Sharkey.api_get(instance, endpoint)
  end

  # Get all of the emojis on an instance. The response includes
  # the names, image URLs, categories, and aliases, as well as
  # `isSensitive`.
  def self.emojis(instance)
    endpoint = "emojis"
    return Sharkey.api_get(instance, endpoint)
  end

  # Get the server's statistics. Includes `notesCount`,`usersCount`,
  # etc etc.
  def self.stats(instance)
    payload = "{}" # For whatever reason, this requires the request type to be POST, but doesn't need a payload :neofox_confused:
    endpoint = "stats"
    return Sharkey.api_post(instance, payload, endpoint)
  end
end
