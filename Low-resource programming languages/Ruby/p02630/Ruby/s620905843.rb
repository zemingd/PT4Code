N = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i
BC = Q.times.map{gets.chomp.split.map(&:to_i)}
sum = a.sum

(0...Q).each do |i|
  sum += ((BC[i][1] - BC[i][0]) * a.count(BC[i][0]))
  a.map!{|x| x==BC[i][0] ? BC[i][1] : x}
  puts sum
end