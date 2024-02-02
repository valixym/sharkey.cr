require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Misc.announcements("https://kitsunes.club", limit: 1)
    x = JSON.parse(resp)
    latest_announcement = x[0]["text"]
    puts "The latest announcement: #{latest_announcement}"
  end
end
