def main(argv)
  n = gets.chomp.to_i
  a = gets.chomp.split(' ').map(&:to_i)
  
  a.each_index do |i|
    a[i] -= i + 1
  end
  b = a.reduce(:+) / n
  
  m = 1e+10
  [b - 2, b - 1, b, b + 1, b + 2].each do |c|
    s = 0
    a.each_index do |i|
      s += (a[i] - c).abs
    end
    m = [m, s].min
  end
  puts m.to_s
end
 
if self.to_s === 'main' then
  main(ARGV)
end