N = gets.to_i
L = gets.split.map(&:to_i).sort

ans = 0
N.times do |i|
  k = i
  (i + 1).upto(N - 2) do |j|
    k += 1 while k < N && L[k] < L[i] + L[j]
    ans += k - (j + 1)
  end
end

puts ans
