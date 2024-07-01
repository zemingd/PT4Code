a, b, c, k = gets.chomp.split(" ").map(&:to_i)
s = [a, b, c].zip([1, 0, -1]).sum do |num_card, weight|
  m = [num_card, k].min
  k -= m
  m * weight
end
puts s
