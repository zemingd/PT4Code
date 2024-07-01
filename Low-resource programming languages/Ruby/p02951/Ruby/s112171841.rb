n = gets.to_i
h = gets.split.map(&:to_i)
flag = 'YES'

if n != 1
 for index in 0..n - 2
  if (h[index] - 1 > h[index + 1])
    flag = 'NO'
    break
  end
 end
end
puts flag
