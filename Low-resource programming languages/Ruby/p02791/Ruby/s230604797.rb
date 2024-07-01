n = gets.chomp.to_i
pn = gets.chomp.split.map(&:to_i)

result = 1

if pn.size == 1
  puts 1
  exit
end

p_min = pn[0]

pn.each_with_index do |pi, i|
  if i == pn.size - 1
    next
  end

  if p_min >= pn[i + 1]
    p_min = pn[i + 1]
    result += 1
  end

end

puts result
