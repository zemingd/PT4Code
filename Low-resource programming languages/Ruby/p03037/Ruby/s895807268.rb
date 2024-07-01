N,M = gets.split(" ").map(&:to_i);
L = Array.new(M, 0)
R = Array.new(M, 0)
for i in 0..M-1
	L[i],R[i] = gets.split(" ").map(&:to_i);
end
for i in 1..M-1
  	if L[i] >= L[i-1]
      if R[i] >= R[i-1]
        l = L[i-1]
        r = R[i-1]
      else
        l = L[i-1]
        r = R[i]
      end
    else
       if R[i] >= R[i-1]
        l = L[i]
        r = R[i-1]
      else
        l = L[i]
        r = R[i] 
       end
    end
end
puts r-l