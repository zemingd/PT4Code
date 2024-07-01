N = gets.chomp.to_i
P = gets.chomp.split(" ").map(&:to_i)

min_list = []
min = Float::INFINITY
P.each do |n|
  min = [n, min].min
  min_list << min
end

cnt = 0
P.each.with_index do |n,i|
  cnt += 1 if P[i] <= min_list[i]
end

puts cnt