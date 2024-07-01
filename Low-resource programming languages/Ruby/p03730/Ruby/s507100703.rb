a,b,c = gets.split.map(&:to_i)
ans = a
if (a%b == 0 && c >= 1) || (a>=b)&&(a%b < c)
  puts "NO"
  exit
end

puts "YES"
