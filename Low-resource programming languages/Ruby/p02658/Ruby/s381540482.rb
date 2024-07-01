n = gets.chomp.to_i
array = gets.chomp.split.map(&:to_i)
mul = 1
if array.include?(0)
  print "0"
  exit
end

array.each do |i|
  mul *= i
end
if mul > 1000000000000000000
  print "-1"
else
  print mul
end