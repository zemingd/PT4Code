N, K = gets.split(' ').map(&:to_i)
A = gets.split(' ').map(&:to_i)

m = A.max
k = K.to_s(2).length
dgt = []
k.times do |i|
  cnt = 0
  N.times do |j|
 	 cnt += 1 if ((1 << i) & A[j]) != 0
  end
  dgt.push(cnt)
end
dgt.push(0)

cand = []
k.times do |n|
  next if K & (1 << n) == 0
  x = 0
  (n + 1).upto(k) do |m|
	  if K & (1 << m) == 0
        x += 2 ** m * dgt[m]
      else
        x += 2 ** m * (N - dgt[m])
      end
  end
  x += 2 ** n * dgt[n]
  0.upto(n - 1) do |m|
    x += 2 ** m * [dgt[m], N - dgt[m]].max
  end
  cand.push(x)
end
  
puts cand.max