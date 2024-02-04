require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Notes.local_timeline("https://kitsunes.club", limit: 1, withFiles: true)
    puts resp
  end
end
