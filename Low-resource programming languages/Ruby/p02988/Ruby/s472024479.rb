gets
N = gets.strip.split(" ").map(&:to_i)

ans = 0

1.upto(N.size - 2) do |i|
  if N[i - 1] > N[i] && N[i + 1] < N[i] || N[i - 1] < N[i] && N[i + 1] > N[i]
    ans += 1
  end
end

puts ans
