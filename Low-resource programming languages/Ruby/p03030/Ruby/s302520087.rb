n = gets.to_i

ss = []
n.times do |i|
  s, q = gets.chomp.split
  ss << [s, -q.to_i, i + 1]
end

ss.sort!.each do |n, s, i|
  p i
end
