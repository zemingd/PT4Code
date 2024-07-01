N, M = gets.split.map(&:to_i)
H = gets.split.map(&:to_i)

E = Hash.new { |h, k| h[k] = Hash.new(false) }

M.times do
  a, b = gets.split.map(&:to_i)

  E[a][b] = E[b][a] = true
end

puts (1..N).count { |n|
  good = true
  h = H[n - 1]

  E[n].each_key do |u|
    good &= h > H[u - 1]
  end

  good
}
