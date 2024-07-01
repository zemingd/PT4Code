input = gets.chomp.chars

output = []

input.each { |i|
  if i == 'B' && output.size != 0
    output.pop
  elsif i == 'B' && output.size == 0
    next
  else
    output << i
  end
}

puts output.join
