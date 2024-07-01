s = STDIN.gets.chomp
X, A, B = s.split(" ").map(&:to_i)
puts (B-A <= 0 ? "delicious" : B-A > X ? "dangerous" : "safe")