# https://qiita.com/norioc/items/5c270ad6ff5d22d1efd0#comment-da13f6b749dba662ec63
require "prime"

def divisors(n)
  n.prime_division.inject([1]) do |ary, (p, e)|
    (0..e).map{ |e1| p ** e1 }.product(ary).map{ |a, b| a * b }
  end.sort
end

N = gets.to_i
A = gets.split.map &:to_i

boxes = [0] * N
ans = [0] * N

(1..N).reverse_each{|i|
  # p [i-1, A[i-1],ans[i-1]]
  next if A[i-1] == boxes[i-1]
  ans[i-1] = 1
  divisors(i).each{|j|
    boxes[j-1] = boxes[j-1] + 1 & 1
  }
  # p [divisors(i), boxes]
}
p ans.size
puts (1..ans.size).select{|i| ans[i-1] } * " "