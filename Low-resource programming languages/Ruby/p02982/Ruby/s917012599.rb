N, D = gets.split.map(&:to_i)
X    = N.times.map{ gets.split.map(&:to_i) }

cnt = 0
0.upto(N-1) do | i |
  (i+1).upto(N-1) do | j |
    a = 0
    0.upto(D-1) do | k |
      a += (X[i][k] - X[j][k]).abs ** 2
    end
    cnt += 1 if Math.sqrt(a).to_i ** 2 == a
  end
end
p cnt