N, M = gets.chomp.split(" ").map(&:to_i)
R = Array.new(N+1, 0)
M.times{
  a, b = gets.chomp.split(" ").map(&:to_i)
  R[a] += 1
  R[b] += 1
}

R.shift
puts R.join("\n")
