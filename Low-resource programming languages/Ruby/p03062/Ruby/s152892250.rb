N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

if A.count{|a| a == 0} > 0 || A.count{|a| a < 0}.even? then
  puts A.inject(0){|r, a| r + a.abs}
else
  wk = (A[-2].abs - A[-1].abs).abs
  puts A[0, N - 2].inject(0){|r, a| r + a.abs} + wk
end
