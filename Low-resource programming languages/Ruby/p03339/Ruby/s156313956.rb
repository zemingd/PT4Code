"累積和を使う問題"

N = gets.to_i
S = gets.chomp

arr = []
arr.fill(0, 0..N-1)


N.times do |i|
  st = 0
  t = N-1
  if S[i]=='W' ? t = i : st = i
    st.upto t do |j|
      arr[j] = arr[j] + 1
    end
  end
end

puts N-arr.max