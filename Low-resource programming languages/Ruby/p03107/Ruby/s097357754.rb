s = gets.chomp.split("").map(&:to_i)

a = 0
b = 0

s.each do |i|
  if i == 0
    a += 1
  else
    b += 1
  end
end

puts [a, b].min * 2