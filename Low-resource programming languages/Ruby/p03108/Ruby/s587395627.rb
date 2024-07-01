N, M = gets.split.map(&:to_i)
E = M.times.map{gets.split.map(&:to_i)}.reverse

R = Array.new(N + 1){|i| i}
C = Array.new(N + 1,1)

def unite!(i,j)
  ca = C[root(i)]
  cb = C[root(j)]
  ri = root(i)
  rj = root(j)
  
  if ri <= rj
    R[rj] = ri
    C[ri] = ca + cb
  else
    R[ri] = rj
    C[rj] = ca + cb
  end
  ca * cb
end


def same?(i,j)
  root(i) == root(j)
end

def root(i)
  R[i] == i ? R[i] : R[i] = root(R[i])
end



T = Array.new(M+1)
T[M] = N * (N - 1) / 2


E.each_with_index do |(a,b),i|
  if same?(a,b)
    T[M-(i+1)] = T[M-i]
  else
    up = unite!(a,b)
    T[M-(i+1)] = T[M-i] - up
  end
end
puts (1 .. M).map{|i| T[i]}
