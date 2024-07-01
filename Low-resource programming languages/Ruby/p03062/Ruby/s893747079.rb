n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
minus = a.count{|x| x < 0}
ans = 0
a.each do |x|
  ans += x.abs
end
if minus % 2 == 1 && !a.include?(0)
  min = a[0].abs
  a.each do |x|
    min = x.abs if min > x.abs
  end
  ans -= min * 2
end
puts ans