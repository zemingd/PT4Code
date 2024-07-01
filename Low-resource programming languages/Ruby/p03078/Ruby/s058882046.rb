X, Y, Z, K = gets.split.map &:to_i
A = gets.split.map(&:to_i).sort.reverse
B = gets.split.map(&:to_i).sort.reverse
C = gets.split.map(&:to_i).sort.reverse

a = []
X.times{|x|
  Y.times{|y|
    Z.times{|z|
      break if (x + 1) * (y + 1) * (z + 1) > K
      a << A[x] + B[y] + C[z]
    }
  }
}

p *a.max(K).sort.reverse
