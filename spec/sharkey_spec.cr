require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Users.achievements("https://kitsunes.club", "9p332xwemp")
    x = JSON.parse(resp)
    u_timestamp = x[0]["unlockedAt"]

    puts "Valixym completed the Sharkey tutorial at #{u_timestamp}"
  end
end
