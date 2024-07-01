# H N
# A1 .. An

h, n = gets.chomp.split(" ").map(&:to_i)
as = gets.chomp.split(" ").map(&:to_i)

sum = as.inject(0) {|s, a| s + a }

if sum >= h
  puts "Yes"
else
  puts "No"
end
