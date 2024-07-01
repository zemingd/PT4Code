line = gets.split(' ')

length = line[0].length
ans = ''

0.upto(length - 1) do
  ans += 'x'
end

p ans
