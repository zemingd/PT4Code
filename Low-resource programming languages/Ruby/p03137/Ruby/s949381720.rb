def solve(n, m, x)
  return 0 if n >= m

  x.map!(&:to_i).sort!
  total = x[-1] - x[0]
  return total if n == 1

  d = (0...(x.size - 1))
        .map {|i| x[i + 1] - x[i] }
        .sort! {|a, b| b <=> a }
        .take(n - 1)
        .sum
  total - d
end

begin
  stdin = STDIN.gets
  nm = stdin.split(/\s/)
  n = nm[0].to_i
  m = nm[1].to_i
  stdin = STDIN.gets
  x = stdin.split(/\s/)
rescue
  puts 0
  exit 0
end

puts(solve(n, m, x))