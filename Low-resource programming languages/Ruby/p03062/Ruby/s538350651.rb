n = gets.to_i
as = gets.chomp.split.map(&:to_i)
ans = as.inject(0){|sum,a|sum + a.abs}
m = 1e10
if as.include?(0)
  puts ans
elsif as.count{|a| a < 0}.even?
  puts ans
else
  as.each do |a|
    m = [m,a.abs].min
  end
  ans -= m*2
  puts ans
end