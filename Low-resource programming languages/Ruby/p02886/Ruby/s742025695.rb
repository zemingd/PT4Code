N = gets.to_i
D = gets.split.map!(&:to_i)

ans = 0
0.upto(N-2) do |i|
  (i+1).upto(N-1) do |j|
    ans += D[i] * D[j]
  end
end

puts ans
