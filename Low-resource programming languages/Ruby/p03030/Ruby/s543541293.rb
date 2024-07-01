n = gets.chomp.to_i

arr= []
n.times do |i|
  s, p = gets.chomp.split(' ')
  p = p.to_i
  arr << [i+1, s, p]
end

arr.map

arr.sort!{|x, y| y[2] <=> x[2]}
arr.sort!{|x, y| x[1] <=> y[1]}

arr.each do |elm|
  puts elm[0]
end