n = gets.chomp.to_i
p_arr = gets.chomp.split(" ").map(&:to_i)

count = 0
min = 9999999999
p_arr.each do |p|
  if p < min then
    min = p
    count += 1
  end
end

puts count
