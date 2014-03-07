require 'spec_helper'

describe "BirthdayHelper" do
  it "returns the birth date and age of the first name typed in" do
    run_script("birthday_helper.rb")
    type("Mike")

    expect(all_output).to match("May 2, 1987,
                                27 years old")
    expect(all_output).to_not include("April 1, 1990,
                                      24 years old")
  end

  it "returns the birth date and age of the last name typed in" do
    run_script("birthday_helper.rb")
    type("Dean")

    expect(all_output).to match("November 23, 1920,
                                94 years old")
    expect(all_output).to_not include("May 2, 1987,
                                      27 years old")
  end

  it "returns the birth date and age of the first and last name typed in" do
    run_script("birthday_helper.rb")
    type("Kinsey Durham")

    expect(all_output).to match("April 1, 1945,
                                69 years old")
    expect(all_output).to_not include("November 23, 1920,
                                      94 years old")
  end
end