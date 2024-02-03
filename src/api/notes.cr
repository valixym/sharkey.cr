require "../sharkey"
require "json"

# This handles most everything related to notes, such as local/hybrid/global feeds, creating/deleting notes, etc.
class Sharkey::Notes
    def self.hybrid_timeline(instance, bearerAuth, limit = 10, sinceId = nil, untilId = nil, sinceDate = nil, untilDate = nil, allowPartial = false, includeMyRenotes = true, includeRenotedMyNotes = true, includeLocalRenotes = true, withFiles = false, withRenotes = true, withReplies = false, withBots = true)
        payload = {"limit": limit, "allowPartial": allowPartial, "includeMyRenotes": includeMyRenotes, "includeRenotedMyNotes": includeRenotedMyNotes, "includeLocalRenotes": includeLocalRenotes, "withFiles": withFiles, "withRenotes": withRenotes, "withReplies": withReplies, "withBots": withBots}

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
end
