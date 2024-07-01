N, Q = gets.split.map &:to_i
S = gets.chomp

b = Array.new(N+1, 0) # 累積和テーブル
N.times do |i|
  if i + 1 < N && S[i] == 'A' && S[i+1] == 'C'
    b[i+1] = b[i] + 1
  else
    b[i+1] = b[i]
  end
end

Q.times do
  l, r = gets.split.map { |i| i.to_i - 1 }
  puts b[r] - b[l]
end