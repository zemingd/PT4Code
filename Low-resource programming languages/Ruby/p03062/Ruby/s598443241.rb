N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
# mc = A.count {|x| x< 0}
# B = A.map {|x| x.abs}
# if mc % 2 == 0 then
#   puts B.sum
# else
#   p = B.min
#   puts B.sum - p * 2
# end
mc = 0
p = 0
sum = 0
A.each do |x|
  mc = mc + 1 if x < 0
  sum = sum + x.abs
  p = x.abs if x.abs < 0
end
if mc % 2 == 0 then
  puts sum 
else
  puts sum - p * 2
end