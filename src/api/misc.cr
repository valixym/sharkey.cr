require "../sharkey"
require "json"

# The `Misc` class is for all API calls which don't have a
# designated section. For example, `get-online-users-count`
# doesn't belong to a category, so it would be placed here.
class Sharkey::Misc

  # Get the number of users currently online.
  #
  # Request type: `GET`
  #
  # ## Example Usage of `get_online_users_count`
  # ```crystal
  # resp = Sharkey::Misc.get_online_users_count("https://kitsunes.club")
  # x = JSON.parse(resp)
  # users_online = x["count"].as_i
  # puts "There are #{users_online} users currently online <3"
  # # Ex: "There are 8 users currently online <3"
  # ```
  def self.get_online_users_count(instance)
    endpoint = "get-online-users-count"
    return Sharkey.api_get(instance, endpoint)
  end

  # Get all of the emojis on an instance. The response includes
  # the names, image URLs, categories, and aliases, as well as
  # `isSensitive`.
  #
  # Request type: `GET`
  #
  # ## Example Usage of `emojis`
  # ```crystal
  # resp = Sharkey::Misc.emojis("https://kitsunes.club")
  # x = JSON.parse(resp)
  # emoji = x["emojis"][2525]
  # puts "Emoji :#{emoji["name"]}: is in the category '#{emoji["category"]}' and is stored at #{emoji["url"]}"
  # # Ex: "Emoji :neofox_blep: is in the category 'neofox' and is stored at https://s3.kitsunes.club/...."
  # ```
  def self.emojis(instance)
    endpoint = "emojis"
    return Sharkey.api_get(instance, endpoint)
  end

  # Get the server's statistics. Includes `notesCount`,`usersCount`,
  # etc etc.
  #
  # Request type: `POST` (empty payload)
  # ## Example Usage of `stats`
  # ```crystal
  # resp = Sharkey::Users.achievements("https://kitsunes.club", "9p332xwemp")
  # x = JSON.parse(resp)
  # u_timestamp = x[0]["unlockedAt"]
  # puts "Valixym completed the Sharkey tutorial at #{u_timestamp}"
  # Ex: "Valixym completed the Sharkey tutorial at 1706568763"
  # ```
  def self.stats(instance)
    payload = "{}" # For whatever reason, this requires the request type to be POST, but doesn't need a payload :neofox_confused:
    endpoint = "stats"
    return Sharkey.api_post(instance, payload, endpoint)
  end
end
