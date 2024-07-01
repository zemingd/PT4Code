def main(argv)
  (n, k) = STDIN.gets.chomp.split(' ').map(&:to_i)
  a = STDIN.gets.chomp.split(' ').map(&:to_i)

  c = [0] * n
  a.each {|v| c[v - 1] += 1}

  b = []
  c.each_with_index {|v, i| b.push({:key => i + 1, :val => v})}
  b = b.sort{|a, b| a[:val] <=> b[:val]}

  d = 0
  while b.size > k do
    v = b.shift
    d += v[:val]
  end

  STDOUT.puts d.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end