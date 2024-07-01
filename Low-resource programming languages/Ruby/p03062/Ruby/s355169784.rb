gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

if A.count{|a| a == 0} > 0 || A.count{|a| a < 0}.even? then
  puts A.inject(0){|r, a| r + a.abs}
else
  puts A.inject(0){|r, a| r + a.abs} - 2 * A.min_by{|a| a.abs}.abs
end
