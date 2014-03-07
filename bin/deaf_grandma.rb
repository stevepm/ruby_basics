puts "Say something to grandma: "
command = gets.chomp

case command
  when "Hi, Grandma"
    puts "HUH?! SPEAK UP SONNY!"
  when "HI, GRANDMA"
    puts "NO, NOT SINCE #{rand(1930..1950).to_s}!"
  when "BLAH"
    10.times do
      puts rand(1930..1950).to_s
    end
end