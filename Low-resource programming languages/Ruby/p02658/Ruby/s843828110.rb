tmp = 1e18
ans = 1
n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)

a.each do |v|
  ans*=v
end

if ans > tmp
  puts "-1"
else
  puts ans
end
