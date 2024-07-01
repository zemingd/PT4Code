n = gets.to_i
h_list = gets.split(" ").map(&:to_i)
val = 0
max = 0
n.times do |i|
  if i == 0 || max <= h_list[i]
    max = h_list[i]
    val += 1
  end
end
puts val