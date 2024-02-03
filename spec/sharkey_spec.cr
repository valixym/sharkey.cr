require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Drive.files_find("https://kitsunes.club", ENV["SHARKEY_API_KEY"], "valixym.png", folderId: "9pa68u9ttb")
    puts resp
  end
end
