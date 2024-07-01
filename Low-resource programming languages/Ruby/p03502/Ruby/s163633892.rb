n = gets.to_i

if n % (n.to_s.split("").map(&:to_i).inject(&:+)) == 0
  puts "Yes"
else
  puts "No"
end