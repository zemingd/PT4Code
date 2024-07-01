def main(argv)
  (n, l) = gets.chomp.split(' ').map(&:to_i)
  
  s = 0
  m = 1e+10.to_i
  k = -1
  (1..n).each do |i|
    d = l + i - 1
    if d.abs < m then
      m = d.abs
      k = i
    end
    s += d
  end
  
  puts (s - (l + k - 1)).to_i
end

if self.to_s == 'main' then
  main(ARGV)
end