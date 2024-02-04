require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Username.available("https://kitsunes.club", "v")
    puts resp # returns `false`
  end
end
