n = gets.to_i
P_arr = gets.chomp.split.map(&:to_i)
counter = 0

n.times do |i1|
    if P_arr[i1] == P_arr[0..i1].sort[0]
      counter += 1
    end
end

p counter
