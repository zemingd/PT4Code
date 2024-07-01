def main
  n = STDIN.gets.chomp.to_i
  ns = STDIN.gets.chomp.split(' ').map(&:to_i)

  cnt = 0

  for i in (0...n - 2) do
    center = ns[i+1]
    sorted_set = [ns[i], center, ns[i+2]].sort
    cnt += 1 if center == sorted_set[1] && center < n
  end

  puts cnt
end

main