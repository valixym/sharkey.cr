require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Misc.get_online_users_count("https://kitsunes.club")
    x = JSON.parse(resp)

    users_online = x["count"].as_i

    puts "There are #{users_online} users currently online <3"
  end
end
