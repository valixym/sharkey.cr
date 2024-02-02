require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Misc.endpoints("https://kitsunes.club")
    
    puts resp
  end
end
