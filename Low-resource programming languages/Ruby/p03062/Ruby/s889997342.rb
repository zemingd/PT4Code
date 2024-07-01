N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)
mc = A.count {|x| x< 0}
B = A.map {|x| x.abs}
if mc % 2 == 0 then
  puts B.sum
else
  p = B.min
  puts B.sum - p * 2
end