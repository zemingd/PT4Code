n = gets.to_i
P_arr = gets.chomp.split.map(&:to_i)
counter = 0
P_max = P_arr.max

n.times do |i|
  if P_max >= P_arr[i]
     counter += 1
     P_max = P_arr[i]
  end
end

p counter
