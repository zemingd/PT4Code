n = gets.chomp.to_i

s = n.to_s.split("").map(&:to_i).reduce(&:+)

if n % s == 0 then
  puts "Yes"
else
  puts "No"
end