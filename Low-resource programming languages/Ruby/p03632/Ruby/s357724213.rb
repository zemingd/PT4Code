a,b,c,d = gets.split.map(&:to_i)

start = a < c ? c : a
finish = b < d ? b : d

result = finish - start < 0 ? 0 : finish-start

puts result