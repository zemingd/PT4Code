n = gets.to_i
h = gets.split.map(&:to_i)
flag = ' Yes '
res = 0
num = 0

if n != 1
 for index in 0..n - 2
  if h[index] - 1 > h[index + 1]
    flag = ' No '
    break
  end
  if h[index] > h[index + 1]
    res = res + 1
    if res = 1
      num = h[index + 1]
    end
    if num > h[index + 1] && res > 1  
      flag = ' No '
      break
    end
  end
 end
end
puts flag
