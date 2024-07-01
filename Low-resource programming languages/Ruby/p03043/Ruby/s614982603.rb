N,K = gets.split.map {|x| x.to_i}

def div_ceil(x,y)
  return (x+y-1) / y
end

pow2 = 1
right = N+1
ret = 0
while true
  if K*2 < pow2
    break
  end
  left = div_ceil(K,pow2)
  if right > left
    #puts "#{left} #{right} #{pow2}"
    ret += (right - left) / (N * pow2).to_f
    right = left
  end
  pow2 *= 2
end

puts ret
