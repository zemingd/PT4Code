gets
D = gets.strip.split(" ").map(&:to_i)

D.sort!

ans = 0
i = 0
0.upto(10**5 + 1) do |k|
  while i < D.size && D[i] < k do
    i += 1
  end

  break if i >= D.size

  ans += 1 if i == (D.size - i)
end

puts ans
