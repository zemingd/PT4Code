N, L = $stdin.read.chomp.split(" ").map(&:to_i)

sum = (2 * L + N - 1) * N / 2

if L < 0
  if L + N - 1 >= 0
    puts sum
  else
    puts sum - (L + N - 1)
  end
else
  puts sum - L
end
