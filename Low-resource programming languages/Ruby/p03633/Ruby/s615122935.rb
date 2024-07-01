def gcm (a,b)
  result = a
  k = 0
  n = b
  loop do 
    k = result%n
    result = n
    n = k
    break if k==0
  end 
  return result
end

def lcm (a,b)
  g = gcm(a,b)
  return a*b/g
end

N = gets.to_i
t = N.times.map{gets.to_i}

l = t[0]
(N-1).times{|i|
  l = lcm(l, t[i+1])
}

puts l