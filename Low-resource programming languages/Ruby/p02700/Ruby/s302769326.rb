a, b, c, d = gets.split(' ').map!{|e|e.to_i}
loop do
  c = c - b
  if c <= 0
    puts 'Yes'
    break
  end
  a = a - d
  if a <= 0
    puts 'No'
    break
  end
end
