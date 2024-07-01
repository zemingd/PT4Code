N = gets.to_i
list = []

N.times do |i|
  s, p = gets.split
  list << [s, p.to_i, i+1]
end
list.sort_by!{|a| [a[0], a[1]] }
list.each do |(s, p, i)|
  puts i
end
