def main(argv)
  n = gets.chomp.to_i
  h = gets.chomp.split(' ').map(&:to_i)
  
  a = [0]
  (n - 1).times do |i|
    a.push(i + 1) if h[i + 1] > h[i]
  end
  a.push(n)
  
  d = 0
  (a.size - 1).times do |j|
    d = [d, a[j + 1] - a[j]].max
  end
  puts (d - 1).to_s
end

if self.to_s == 'main' then
  main(ARGV)
end