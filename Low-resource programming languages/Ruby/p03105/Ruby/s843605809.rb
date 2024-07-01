a, b, c = gets.split(' ').map(&:to_i)

count = b / a

if count > c
  print c
else
  print count
end
