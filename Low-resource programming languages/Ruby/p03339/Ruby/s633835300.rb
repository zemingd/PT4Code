"累積和を使う問題"

N = gets.to_i
S = gets.chomp

arr = []
arr.fill(0, 0..N-1)

N.times do |i|
  N.times do |j|
    if S[i]=='W' ? j <= i : j >= i
      arr[j] = arr[j] + 1
    end
  end
end

puts N - arr.max