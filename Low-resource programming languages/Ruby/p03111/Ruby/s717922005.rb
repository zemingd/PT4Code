N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{gets.to_i}

def calc(i, j, xs, z)
  mp = (j - i) * 10
  while i <= j
    z -= xs[i]
    i += 1
  end
  z.abs + mp
end

ans = Float::INFINITY
L.permutation(N).each do |ar|
  for i in 0...(N - 2)
    a = calc(0, i, ar, A)
    next if a >= ans
    for j in (i + 1)...(N - 1)
      b = calc(i + 1, j, ar, B)
      next if a + b >= ans
      for k in (j + 1)...N
        c = calc(j + 1, k, ar, C)
        tot = a + b + c  
        ans = tot if tot < ans 
      end 
    end 
  end 
end 
puts ans