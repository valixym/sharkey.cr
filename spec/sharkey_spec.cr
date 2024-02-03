require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Notes.global_timeline("https://kitsunes.club", ENV["SHARKEY_API_KEY"], limit: 1, withFiles: true)
    puts resp
  end
end
