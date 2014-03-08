puts "type a number: "
command = gets.chomp
number = command.to_i

def bottlesOfBeer(x)
  if x > 2
    puts "#{x} bottles of beer on the wall, #{x} bottles of beer.\nTake one down and pass it around, #{x - 1} bottles of beer on the wall.\n"
  elsif x == 2
    puts "#{x} bottles of beer on the wall, #{x} bottles of beer.\nTake one down and pass it around, #{x - 1} bottle of beer on the wall.\n"
  elsif x == 1
    puts "#{x} bottle of beer on the wall, #{x} bottle of beer.\nTake one down and pass it around, no bottles of beer on the wall.\n"
  end
end

if command == ""
  puts "I need to know how many bottles to sing!"
elsif number == 0
  puts "No bottles of beer on the wall, no more bottles of beer.\nGo to the store and buy some more, 99 bottles of beer on the wall.\n"
else
  while number > 0
    bottlesOfBeer(number)
    number -= 1
  end
end
