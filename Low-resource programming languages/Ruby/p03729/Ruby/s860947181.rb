a, b, c = gets.split(' ')
a_end = a.slice(-1)
c_start = c.slice(0, 1)

if b.start_with?(a_end) && b.end_with?(c_start)
  puts 'YES'
else
  puts 'NO'
end
