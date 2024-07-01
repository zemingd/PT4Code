n = gets.chomp.to_i
a_arr = gets.chomp.split(" ").map(&:to_i)
b_arr = gets.chomp.split(" ").map(&:to_i)
c_arr = gets.chomp.split(" ").map(&:to_i)

score = 0
prev = nil
a_arr.each do |a|
  score += b_arr[a-1]
  if !prev.nil? && prev + 1 == a then
    score += c_arr[prev-1]
  end
  prev = a
end

puts score
