require "./spec_helper"
require "json"

describe Sharkey do
  # TODO: Write tests

  it "works" do
    resp = Sharkey::Misc.stats("https://kitsunes.club")
    x = JSON.parse(resp)

    notes_count = x["originalNotesCount"].as_i
    users_count = x["originalUsersCount"].as_i

    puts "Instance has #{notes_count} total notes, and #{users_count} total users <3"
  end
end
