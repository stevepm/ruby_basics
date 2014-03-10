require 'spec_helper'

describe "RomanNumerals" do
  it "converts a single digit number to traditional roman numeral" do
    run_script("roman_numerals.rb")
    type("5")

    expect(all_output).to include("V")
    expect(all_output).to_not match("XX")
  end

  it "converts a double digit number to traditional roman numeral" do
    run_script("roman_numerals.rb")
    type("39")

    expect(all_output).to include("XXXIX")
    expect(all_output).to_not match("V")
  end

  it "converts the triple digit number to traditional roman numeral" do
    run_script("roman_numerals.rb")
    type("257")

    expect(all_output).to include("CCLVII")
    expect(all_output).to_not match("XXXVIIII")
  end

  it "converts the four-digit number to traditional roman numerals" do
    run_script("roman_numerals.rb")
    type("1468")

    expect(all_output).to include("MCDLXVIII")
    expect(all_output).to_not match("CCLVII")
  end

  it "converts 1500 properly into roman numerals" do
    run_script("roman_numerals.rb")
    type("1500")

    expect(all_output).to include("MD")
  end
end

