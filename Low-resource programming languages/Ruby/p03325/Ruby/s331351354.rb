n = gets.to_i
arr = gets.split(" ").map{|i|i.to_i}
ans = 0
p n
p arr
n.times{|i|
  k = 1
  p arr[i] % ( 2 ** k )
  while arr[i] % ( 2 ** k ) == 0 do
    k = k + 1
  end
  ans = ans + k - 1
  p ans
}
puts ans