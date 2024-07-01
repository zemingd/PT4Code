N, X = gets.chomp.split.map(&:to_i)
x = gets.chomp.split.map(&:to_i)
(0..N-1).each do |i|
  x[i] = (X - x[i]).abs
end

def euclid (a, b)
  if(a < b)
    temp = a
    a = b
    b = temp
  end
  if(b < 1)
    return -1
  end
  
  if((a % b) == 0)
    return b;
  end
  return euclid(b, a%b)  
end

if(N != 1)
  answer = euclid(x[0], x[1])
else
  answer = x[0]
end

(2..N-1).each do |i|
  check = euclid(answer, x[i])
  if(answer > check)
    answer = check
  end
end
puts answer