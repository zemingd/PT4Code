array = []
ans = ''

a = gets

l = a.split[0].to_i
n = a.split[1].to_i

l.times { array.push(gets) }
array.sort().each { |s| ans += s.chomp }

puts ans
