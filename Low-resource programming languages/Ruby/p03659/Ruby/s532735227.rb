N = gets.to_i
A = gets.chomp.split(" ").map(&:to_i)

all = A.inject(:+)
wk = A[0]
ans = (all - 2 * wk).abs
(1..(A.size-2)).each{|i|
  wk += A[i]
  tmp = (all - 2 * wk).abs
  if ans > tmp then
    ans = tmp
  end
}

puts ans
