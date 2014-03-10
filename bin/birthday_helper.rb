require 'csv'
require 'date'

people = []
n = 0

CSV.foreach("/Users/stevenmagelowitz/gSchoolWork/ruby_basics/bin/birthday_data.csv") do |col|
  if n > 0
    people << [col[1].to_s.strip, col[0].to_s.strip, col[2].to_s.strip, col[3].to_s.strip]
  end
  n += 1
end


def search_for_a_name(name, people)
  displayed = false
  name_array = name.split(" ")
  if name_array.length == 1
    people.each do |person|
      if name_array[0] == person[0] || name_array[0] == person[1]
        puts "#{Date.parse(person[2]).strftime("%B %-d, %Y")}, #{((DateTime.now.mjd - DateTime.parse(person[2]).mjd) / 365.25).to_i} years old"
        displayed = true
      end
    end
    if displayed == false
      puts "That person is not in our system."
    end
  elsif name_array.length == 2
    people.each do |person|
      if name_array[0] == person[0] && name_array[1] == person[1]
        puts "#{Date.parse(person[2]).strftime("%B %-d, %Y")}, #{((DateTime.now.mjd - DateTime.parse(person[2]).mjd) / 365.25).to.i} years old"
        displayed = true
      end
    end
    if displayed == false
      puts "That person is not in our system."
    end
  else
    puts "That person is not in our system."
  end
end

puts "Please enter a name: "
name = gets.chomp

search_for_a_name(name, people)