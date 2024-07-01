result = true

_n = gets
pn = gets.chomp.split.map(&:to_i)

sorted_pn = pn.sort

p pn
p sorted_pn

if pn == sorted_pn
  puts 'YES'
  return
end

diff = []
sorted_pn.each_with_index do |n, i|
  diff.push(i) if n != pn[i]

  next unless diff.count > 2

  result = false
  break
end

puts result ? 'YES' : 'NO'
