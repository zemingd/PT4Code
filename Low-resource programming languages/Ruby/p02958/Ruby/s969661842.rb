result = true

_n = gets
pn = gets.chomp.split.map(&:to_i)

sorted_pn = pn.sort

if pn == sorted_pn
  puts 'YES'
  exit
end

diff = []
sorted_pn.each_with_index do |n, i|
  diff.push(i) if n != pn[i]

  if diff.count > 2
    result = false
    break
  end
end

puts result ? 'YES' : 'NO'
