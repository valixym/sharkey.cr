require "../sharkey"
require "json"

# This handles most everything related to notes, such as local/hybrid/global feeds, creating/deleting notes, etc.
class Sharkey::Notes
  # Shows the 'hybrid timeline', which, I believe, is the API's version of the "Social" timeline in the Sharkey UI, but I can't be sure.
  def self.hybrid_timeline(instance, bearerAuth, limit = 10, sinceId = nil, untilId = nil, sinceDate = nil, untilDate = nil, allowPartial = false, includeMyRenotes = true, includeRenotedMyNotes = true, includeLocalRenotes = true, withFiles = false, withRenotes = true, withReplies = false, withBots = true)
    payload = {"limit" => limit, "allowPartial" => allowPartial, "includeMyRenotes" => includeMyRenotes, "includeRenotedMyNotes" => includeRenotedMyNotes, "includeLocalRenotes" => includeLocalRenotes, "withFiles" => withFiles, "withRenotes" => withRenotes, "withReplies" => withReplies, "withBots" => withBots}

    unless sinceId.nil?
      payload["sinceId"] = sinceId
    end

    unless untilId.nil?
      payload["untilId"] = untilId
    end

    unless sinceDate.nil?
      payload["sinceDate"] = sinceDate
    end

    unless untilDate.nil?
      payload["untilDate"] = untilDate
    end

    endpoint = "notes/hybrid-timeline"
    return Sharkey.api_auth_post(instance, payload.to_json, endpoint, bearerAuth)
  end

  #   Shows the local timeline. Basically, the timeline including all the servers that the instance federates with.
  def self.global_timeline(instance, withFiles = false, withBots = true, withRenotes = true, limit = 10, sinceId = nil, untilId = nil, sinceDate = nil, untilDate = nil)
    payload = {
      "withFiles" => withFiles,
      "withBots"  => withBots,
    }

    unless sinceId.nil?
      payload["sinceId"] = sinceId
    end

    unless untilId.nil?
      payload["untilId"] = untilId
    end

    unless sinceDate.nil?
      payload["sinceDate"] = sinceDate
    end

    unless untilDate.nil?
      payload["untilDate"] = untilDate
    end

    endpoint = "notes/global-timeline"
    return Sharkey.api_post(instance, payload.to_json, endpoint)
  end

  # I'm not entirely sure what this does
  def self.bubble_timeline(instance, withFiles = false, withBots = true, withRenotes = true, limit = 10, sinceId = nil, untilId = nil, sinceDate = nil, untilDate = nil)
    payload = {"withFiles" => withFiles, "withBots" => withBots, "withRenotes" => withRenotes, "limit" => limit}

    unless sinceId.nil?
      payload["sinceId"] = sinceId
    end

    unless untilId.nil?
      payload["untilId"] = untilId
    end

    unless sinceDate.nil?
      payload["sinceDate"] = sinceDate
    end

    unless untilDate.nil?
      payload["untilDate"] = untilDate
    end

    endpoint = "notes/bubble-timeline"
    return Sharkey.api_post(instance, payload.to_json, endpoint)
  end

  # Display timeline of the local instance. NOTE: does not require `bearerAuth`.
  # def self.local_timeline(instance, )
end
