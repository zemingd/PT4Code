def main(argv)
  n = gets.chomp.to_i
  d = gets.chomp.split(' ').map(&:to_i)
  
  s = d.reduce(:+)
  t = d.map{|x| x ** 2}.reduce(:+)
  
  puts (((s ** 2) - t) / 2).to_s
end

if self.to_s == 'main' then
  main(ARGV)
end