h = gets.to_i

output = 1

Math.log2(h).to_i.times do |val|
  output += 2 ** (val + 1)
end

puts output