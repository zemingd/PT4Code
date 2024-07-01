n = gets.to_i
a = gets.split.map(&:to_i)

ans = 1
a.each do |num|
  ans = ans.lcm(num)
end

puts a.map{|i| (ans-1)%i}.inject(:+)