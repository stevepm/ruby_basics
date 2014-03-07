require 'spec_helper'

describe "WallBeer" do
  it "prints out the first verse for 99 bottles of beer on the wall, when told to 'sing' with 99" do
    run_script("wall_beer.rb")
    type("sing 99")

    expect(all_output).to match("99 bottles of beer on the wall, 99 bottles of beer.\nTake one down and pass it around, 98 bottles of beer on the wall.\n")
    expect(all_output).to_not include("Fine, don't listen to my song.")
  end

  it "throws an error if it does not know how many number of bottles" do
    run_script("wall_beer.rb")
    type("sing")

    expect(all_output).to match("I need to know how many bottles to sing!")
    expect(all_output).to_not include("1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n")
  end

  it "responds with 'Fine, don't listen to my song.', when told anything else besides 'sing''" do
    run_script("wall_beer.rb")
    type("I don't want to hear you sing")

    expect(all_output).to match("Fine, don't listen to my song.")
    expect(all_output).to_not include("18 bottles of beer on the wall, 18 bottles of beer.\nTake one down and pass it around, 17 bottles of beer on the wall.\n")
  end

  it "prints out the lyrics for the rest of the verses, except 2-0, when told to sing" do
    run_script("wall_beer.rb")
    type("sing 8")

    expect(all_output).to match("8 bottles of beer on the wall, 8 bottles of beer.\nTake one down and pass it around, 7 bottles of beer on the wall.\n. 7 bottles of beer on the wall, 7 bottles of beer.\nTake one down and pass it around, 6 bottles of beer on the wall.\n")
    expect(all_output).to_not include("Fine, don't listen to my song.")
  end

  it "prints out the lyrics for 2 bottles of beer, when told to sing" do
    run_script("wall_beer.rb")
    type("sing 2")

    expect(all_output).to match("2 bottles of beer on the wall, 2 bottles of beer.\nTake one down and pass it around, 1 bottle of beer on the wall.\n")
    expect(all_output).to_not include("Fine, don't listen to my song.")
  end

  it "prints out the lyrics for 1 bottles of beer, when told to sing" do
    run_script("wall_beer.rb")
    type("sing 1")

    expect(all_output).to match("1 bottle of beer on the wall, 1 bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n")
    expect(all_output).to_not include("Fine, don't listen to my song.")
  end

  it "prints out the lyrics for no bottles of beer, when told to sing and there is no more beer left" do
    run_script("wall_beer.rb")
    type("sing 0")

    expect(all_output).to match("No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n")
    expect(all_output).to_not include("Fine, don't listen to my song.")
  end
end