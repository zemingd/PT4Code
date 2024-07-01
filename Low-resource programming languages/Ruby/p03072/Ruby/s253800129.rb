n = gets.chomp.to_i
h_list = gets.chomp.split(" ").map(&:to_i)

cur_max = 0
ans = 0
h_list.each do |h|
  if h > cur_max
    cur_max = h
  end

  ans += 1 if h >= cur_max
end
puts ans
