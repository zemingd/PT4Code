n = gets.chomp.to_i
pn = gets.chomp.split.map(&:to_i)

result = 0

if pn.size == 1
  puts 1
  exit
end

pn.each_with_index do |pi, i|
  if i == 0
    result += 1
    next
  end

  pn_slice = pn[0..i]
  if pn_slice.min >= pi
    result += 1
  end
end

puts result
