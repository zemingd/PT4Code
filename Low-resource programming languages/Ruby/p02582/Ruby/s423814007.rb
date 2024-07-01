s = gets.chomp
r_c = 0
if s.include?("RRR")
  r_c = 3
elsif s.include?("RR")
  r_c = 2
elsif s.include?("R")
  r_c = 1
else
  r_c = 0
end
puts r_c