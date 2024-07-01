n = gets.to_i
p = gets.split(' ').map(&:to_i)
count = 0
(0...n).each do |i|
  flag = (0..i).bsearch{|j| p[j] < p[i]}
  count += 1 if flag.nil?
end
puts count