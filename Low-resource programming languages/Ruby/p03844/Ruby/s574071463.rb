num = gets.chomp.to_i
a = gets.chomp.split(' ')
if num.odd?
  h = Array.new(num, 0)
  a.each do |i|
    puts '0' if i.to_i.odd?
    h[i.to_i] += 1
  end
  if h[0] != 1 || h.max != 2 || h.include(1)
    puts '0'
  else
    puts 2**(num/2.to_i)
  end
else
  h = Array.new(num, 0)
  a.each do |i|
    puts '0' if i.to_i.even? && i != '0'
    h[i.to_i] += 1
  end
  if h.max > 2 && h.min < 2
    puts '0'
  else
    puts 2**(num/2.to_i)
  end
end
