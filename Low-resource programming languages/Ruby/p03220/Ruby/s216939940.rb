n = gets.chomp.to_i
t,a = gets.chomp.split(" ").map(&:to_i)
h_arr = gets.chomp.split(" ").map(&:to_i)

min = 999999999999
index = nil
h_arr.each_with_index do |h, ind|
  diff = (t - h * 0.006 - a).abs
  if diff < min then
    min = diff
    index = ind
  end
end

puts index + 1
