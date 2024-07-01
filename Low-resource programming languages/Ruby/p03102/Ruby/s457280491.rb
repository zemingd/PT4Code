N, M, C= gets.split.map(&:to_i)

b = gets.split.map(&:to_i)

A = Array.new( N ).map{ gets.split.map(&:to_i)  }

ans = 0

A.each do |a|
  
  f = C
  
  M.times do |i|
    f += a[i] * b[i]
  end
  
  ans += 1 if f > 0
end

p ans


