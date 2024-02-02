require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Drive.files_upload_from_url("https://kitsunes.club", ENV["SHARKEY_API_KEY"], "https://valixym.net/assets/valixym.png", comment: "looking so cool :3")
    puts resp
  end
end
