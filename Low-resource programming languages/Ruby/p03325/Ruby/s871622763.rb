N = gets.to_i
a_list = gets.split.map(&:to_i)
ans = a_list.map do |a|
  count = 0
  while a % 2 == 0
    count += 1
    a = a / 2
  end
  count
end.reduce(&:+)
puts ans
