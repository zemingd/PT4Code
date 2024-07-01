n = gets.to_i
line = gets.chomp.split("")
strings = []

line.each do |string|
  number = string.ord + n
  if number > 90
    number -= 26
  end
  strings.push(number.chr)
end

puts strings.join