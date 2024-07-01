s = gets.chomp.split("").map(&:to_s)
t = gets.split("").map(&:to_s)

if s.join + t[-1] == t.join
  puts "Yes"
else
  puts "No"
end