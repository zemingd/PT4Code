def main(argv)
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  
  a.each_index  do |i|
    a[i] -= i + 1
  end
  b = a.reduce(:+) / n
  
  s = 0
  a.each_index do |i|
    s += (a[i] - b).abs
  end
  puts s.to_s
end

if self.to_s === 'main' then
  main(ARGV)
end