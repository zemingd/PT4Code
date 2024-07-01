n = gets.to_i
r = []
for i in 1..n
  s = gets.split
  r << [i, s[0], s[1]]
end
r.sort_by!{|x| [x[1], -x[2].to_i]}
r.each do |a|
  puts a[0]
end