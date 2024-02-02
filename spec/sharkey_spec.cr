require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Misc.emojis("https://kitsunes.club")
    x = JSON.parse(resp)

    emoji = x["emojis"][2525]

    puts "Emoji :#{emoji["name"]}: in in the category '#{emoji["category"]}' and is stored at #{emoji["url"]}"
  end
end
