n = gets.to_i
a_arr = gets.split.map(&:to_i)
b_arr = gets.split.map(&:to_i)
c_arr = gets.split.map(&:to_i)

prev = nil
result = 0
a_arr.each do |a|
  result += b_arr[a-1]
  if prev == a - 1
    result += c_arr[prev-1]
  end
  prev = a
end

puts result
