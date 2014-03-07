require 'spec_helper'

describe "Greetings" do
  it 'asks the user for their name and outputs the customized greeting' do
    # this is the same as typing `ruby bin/greetings.rb` at the command line
    run_script("greetings.rb")
    type("Mike")

    expect(all_output).to include("What is your name?")
    expect(all_output).to include("Hello Mike!")
  end
end