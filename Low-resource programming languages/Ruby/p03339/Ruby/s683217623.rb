"累積和を使う問題"

N = gets.to_i
S = gets.chomp

arr = []
arr.fill(0, 0..N)

N.times do |i|
  s = 0
  t = N-1
  if S[i]=='W' ? t = i : s = i
    arr[s] = arr[s] + 1
    arr[t+1] = arr[t+1] - 1
  end
end

#累積和を求める
sum = 0
(N+1).times do |i|
  arr[i] = arr[i] + sum
  sum = arr[i]
end

puts N-arr.max