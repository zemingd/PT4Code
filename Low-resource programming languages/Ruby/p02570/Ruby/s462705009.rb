d,t,s = gets.chomp.split(" ").map(&:to_i)

if s*t >= d
  puts("yes")
else
  puts("No")
end