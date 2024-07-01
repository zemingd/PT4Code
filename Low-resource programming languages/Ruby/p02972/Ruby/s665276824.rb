def divisors(n)
  res = []
  (1..(n**0.5).to_i).each{|i|
    if n % i == 0
      res << i
      if i != 1 && i*i != n
        res << n / i
      end
    end
  }
end

N = gets.to_i
A = gets.split.map &:to_i

boxes = [0] * N
ans = []

(1..N).reverse_each{|i|
  # p [i-1, A[i-1],ans[i-1]]
  next if A[i-1] == boxes[i-1]
  ans << i
  divisors(i).each{|j|
    boxes[j-1] = boxes[j-1] + 1 & 1
  }
  # p [divisors(i), boxes]
}
p ans.size
puts ans.sort * " "