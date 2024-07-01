n = gets.chomp.to_i
h_arr = gets.chomp.split(" ").map(&:to_i) + [10**9+1]

cur = 0
move = 0
max = 0
h_arr.each do |h|
  if cur >= h then
    move += 1
  else
    max = move if move > max
    move = 0
  end
  cur = h
end

puts max
