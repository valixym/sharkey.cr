require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Drive.files_folders_create("https://kitsunes.club", ENV["SHARKEY_API_KEY"], "blah")
    puts resp
  end
end
