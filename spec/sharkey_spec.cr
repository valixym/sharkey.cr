require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Drive.drive("https://kitsunes.club", ENV["SHARKEY_API_KEY"])
    puts resp
  end
end
