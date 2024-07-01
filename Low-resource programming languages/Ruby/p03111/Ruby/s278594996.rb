N, A, B, C = gets.split.map(&:to_i)
L = N.times.map{gets.to_i}

ans = Float::INFINITY
L.permutation(N).each do |ar|
  for i in 0...(N - 2)
    a = (A - ar[0..i].inject(:+)).abs + i * 10
    for j in (i + 1)...(N - 1)
      b = (B - ar[(i + 1)..j].inject(:+)).abs + (j - i - 1) * 10
      for k in (j + 1)...N
        c = (C - ar[(j + 1)..k].inject(:+)).abs + (k - j - 1) * 10
        tot = a + b + c  
        ans = tot if tot < ans 
      end 
    end 
  end 
end 
puts ans