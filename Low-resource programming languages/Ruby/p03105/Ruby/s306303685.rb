a, b, c = gets.split(' ').map(&:to_i)

count = b / a

if count > c
  puts c
else
  puts count
end
