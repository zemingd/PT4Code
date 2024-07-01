ary = []

ary.push(gets.chomp)
d =  ary[0].split(' ')

a = 0
d.each do |i|
  s = i.to_s.length
  a += s
end

p a