N = gets.chop.to_i
A = gets.chop.split.map(&:to_i)

b = []
rev_flg = false

A.each_with_index do |a, i|
  b.push(a) if i % 2 == 0
  b.unshift(a) if i % 2 == 1
end

b.reverse! if A.size % 2 == 1

puts b.join (' ')