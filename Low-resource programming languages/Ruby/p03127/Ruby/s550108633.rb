n = gets.to_i
as = gets.split(" ").map(&:to_i)
as.sort!

ans = as[0]

n.times.with_index(1) do |i|
  break if as[i].nil?
  if as[i] % ans == 0
    next
  end
  ans = [as[i] % ans, ans].min
end

puts ans