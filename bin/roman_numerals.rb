ROMANS = {
  1   => "I",
  4   => "IV",
  5   => "V",
  9   => "IX",
  10  => "X",
  40  => "XL",
  50  => "L",
  90  => "XC",
  100 => "C",
  400 => "CD",
  500 => "D",
  900 => "CM",
  1000  => "M",
}

puts "Enter a number to convert to roman numerals: "
number = gets.chomp.to_i
x = number
keyArray = []
valueArray = []
numValue = nil
ROMANS.each do |key, _|
  keyArray = keyArray.push(key)
end

keyArray.sort!{ |x,y| y <=> x }

if x > 0
  while x > 0
    keyArray.each do |num|
      if x >= num
        valueArray = valueArray.push(ROMANS[num])
        numValue = num
        break
      end

    end
    x = x - numValue
  end

else
  puts "Please enter a number greater than 0"
end

puts "#{number} is equal to " + valueArray.join

