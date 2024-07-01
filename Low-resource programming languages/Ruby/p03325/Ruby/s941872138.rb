n = gets.to_i
as = gets.split.map(&:to_i)

ans = 0

as.each do |a|
  tmp = a
  while tmp.even?
    ans += 1
    tmp /= 2
  end
end

puts ans
