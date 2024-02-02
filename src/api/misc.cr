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
end
