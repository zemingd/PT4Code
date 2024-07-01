def main(argv)
  n = gets.chomp.to_i
  p = gets.chomp.split(' ').map(&:to_i)
  
  counter = 0
  (n - 2).times do |i|
    f1 = p[i + 0] < p[i + 1] && p[i + 1] < p[i + 2]
    f2 = p[i + 0] > p[i + 1] && p[i + 1] > p[i + 2]
    if f1 || f2 then
      counter += 1
    end
  end
  puts counter.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end