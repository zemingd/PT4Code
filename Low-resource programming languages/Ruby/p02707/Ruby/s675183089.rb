n = gets.to_i
a = gets.split.map(&:to_i)

members = [0] * n

a.each do |i|
  members[i-1] += 1
end

members.each do |i|
  puts i
end