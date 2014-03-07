require 'spec_helper'

describe "DeafGrandma" do
  it "responds with 'HUH?! SPEAK UP SONNY!'" do
    run_script("deaf_grandma.rb")
    type("Hi, Grandma")

    expect(all_output).to include("HUH?! SPEAK UP SONNY!")
    expect(all_output).to_not match(/NO, NOT SINCE \d{4}!/)
  end

  it "responds with 'NO, NOT SINCE [some year]!' if you shout" do
    run_script("deaf_grandma.rb")
    type("HI, GRANDMA")

    expect(all_output).to match(/NO, NOT SINCE \d{4}!/)
    expect(all_output).to_not include("HUH?! SPEAK UP SONNY!")
  end

  it "prints random years between 1930 and 1950" do
    10.times do
      run_script("deaf_grandma.rb")
      type("BLAH")
    end

    years = all_output.scan(/(\d{4})/).flatten.map(&:to_i)
    expect(years.uniq).to have_at_least(2).items
    years.uniq.each { |year| expect(1930..1950).to include(year) }
  end
end