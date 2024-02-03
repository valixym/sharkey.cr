require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Notes.hybrid_timeline("https://kitsunes.club", ENV["SHARKEY_API_KEY"], limit: 1)
    puts resp
  end
end
