x,a,b = gets.chomp.split(" ").map(&:to_i)

if b <= a
  answer = "delicious"
elsif b <= a + x
  answer = "safe"
else
  answer = "dangerous"
end

puts answer