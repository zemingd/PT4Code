N, A, B, C = gets.chomp.split(" ").map(&:to_i)
L = Array.new(N).map{gets.to_i}

K = Array.new(4).map{Array.new}
ANS = []
D = [A, B, C]

def solve(n)
  (calc; return) if n == -1
  4.times{|i|
    K[i].push(n)
    solve(n-1)
    K[i].pop
  }
end

def calc
  return if K[0].empty? || K[1].empty? || K[2].empty?
  ANS << (0..2).to_a.inject(0){|r, i|
    r + (D[i] - K[i].inject(0){|r, k| r + L[k]}).abs + 10 * (K[i].size - 1)
  }
end

solve(N-1)

puts ANS.min
