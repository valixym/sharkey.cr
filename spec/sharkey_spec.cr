require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Drive.files_find_by_hash("https://kitsunes.club", ENV["SHARKEY_API_KEY"], "ef9dea05bc76e12059b550bfa8c70c6d")
    puts resp
  end
end
