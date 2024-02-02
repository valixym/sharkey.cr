require "../sharkey"
require "json"

# The `Drive` class handles everything related to Sharkey's 
# "Drive" storage system thingy. The majority, if not all,
# of methods in this class require an API/auth key.
class Sharkey::Drive
    # List the files in a user's drive.
    #
    # Request type: `POST`
    # ## Example Usage of `drive/files`
    # ```crystal
    # # Note: in this example, I set an environment variable to my API key.
    # # I recommend you do the same for convenience and safety.
    # resp = Sharkey::Drive.files("https://kitsunes.club", ENV["SHARKEY_API_KEY"])
    # puts resp
    # ```
    def self.files(instance, bearerAuth, limit = 10, sort = "+createdAt")
        payload = {"limit" => limit, "sort" => sort}.to_json
        endpoint = "drive/files"
        return Sharkey.api_auth_post(instance, payload, endpoint, bearerAuth)
    end

    # Get information on the authenticated user's drive. Will return `capacity` and `usage` info in *bytes*. You may want to convert these to KB or MB depending on your use-case.
    #
    # Request type: `POST`
    # 
    def self.drive(instance, bearerAuth)
        payload = "{}"
        endpoint = "drive"
        return Sharkey.api_auth_post(instance, payload, endpoint, bearerAuth)
    end

    # For whatever reason, this code doesn't want to work. I'm keeping it here if I want to fix it later, though.

    # def self.files_create(instance, bearerAuth, file, name = "", comment = "", isSensitive = false, force = false)
    #     payload = {"name" => name, "comment" => comment, "isSensitive" => isSensitive, "force" => force, "file" => file}.to_json
    #     endpoint = "drive/files/create"
    #     puts payload
    #     puts endpoint
    #     return Sharkey.api_auth_post(instance, payload, endpoint, bearerAuth)
    # end

    # Request the server to download a new drive file from a URL. Please note that, if the query is valid, it will return nothing.
    #
    # Request type: `POST`
    def self.files_upload_from_url(instance, bearerAuth, url, isSensitive = false, comment = "", marker = "", force = false)
        payload = {"url" => url, "isSensitive" => isSensitive, "comment" => comment, "marker" => marker, "force" => force}.to_json
        endpoint = "drive/files/upload-from-url"
        return Sharkey.api_auth_post(instance, payload, endpoint, bearerAuth)
    end

    # Search for a file by name. Will return all available info on the file, incl. `md5` hash, `id`, etc.
    #
    # Request type: `POST`
    def self.files_find(instance, bearerAuth, name)
        payload = {"name": name}.to_json
        endpoint = "drive/files/find"
        return Sharkey.api_auth_post(instance, payload, endpoint, bearerAuth)
    end
end
