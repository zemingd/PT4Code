N,M = gets.split(" ").map(&:to_i);
L = Array.new(M+1, 0)
R = Array.new(M+1, 0)
L[0] = 1
R[0] = N
for i in 1..M
	L[i],R[i] = gets.split(" ").map(&:to_i);
  	if L[i] < L[i-1]
      if R[i] > R[i-1]
        L[i] = L[i-1]
        R[i] = R[i-1]
      else
        L[i] = L[i-1]
      end
    else
      if R[i] > R[i-1]
        R[i] = R[i-1]
      else
      end
    end
end
puts R[M]-L[M]+1