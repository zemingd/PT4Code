def how_many_times(k, i)
  x = i
  c = 0
  
  while x < k do
    x *= 2
    c += 1
  end
  
  return c
end

def main(argv)
  (n, k) = gets.chomp.split(' ').map(&:to_i)
  
  s = 0.0
  (1..n).each do |i|
    x = how_many_times(k, i)
    s += (0.5 ** x)
  end
  
  puts (s / n.to_f).round(12).to_s
end
 
if self.to_s == 'main' then
  main(ARGV)
end