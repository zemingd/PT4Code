n = gets.chomp.to_i
(1..n).each do |x|
  print " #{x}" if x % 3 == 0 || x.to_s =~ /3/
end
puts ""