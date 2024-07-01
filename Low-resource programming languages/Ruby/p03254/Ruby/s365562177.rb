def main(argv)
  (n, x) = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  a.sort!

  s = a.reduce(:+)
  if s == x then
    puts n.to_s
    return
  elsif s < x then
    puts (n - 1).to_s
    return
  end

  # s > x
  cs = [0] * (n + 1)
  n.times { |i| cs[i + 1] = cs[i] + a[i] }
  puts (cs.select{|c| c <= x}.size - 1).to_s
end

if self.to_s == 'main' then
  main(ARGV)
end