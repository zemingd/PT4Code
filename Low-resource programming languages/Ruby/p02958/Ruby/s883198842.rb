n = gets.to_i
ary = gets.split.map(&:to_i)
ans = 0

ary.zip(ary.sort) { |a, b| ans += 1 if a != b }
puts ans <= 2 ? 'YES' : 'NO'