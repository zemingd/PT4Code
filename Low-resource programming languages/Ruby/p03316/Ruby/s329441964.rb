n = gets.chomp

s = 0
n.length.times do |i|
  s += n[i].to_i
end

puts n.to_i % s == 0 ? 'Yes' : 'No'
