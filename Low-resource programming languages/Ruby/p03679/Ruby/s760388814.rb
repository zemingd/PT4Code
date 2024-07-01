x, a, b  = gets.chomp.split.map(&:to_i)

ans = ""
if b <= a
  ans = "delicious"
elsif b <= a + x
  ans = "safe"
else
  ans = "dangerous"
end
puts ans
