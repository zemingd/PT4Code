def main(argv)
  (x, a) = gets.chomp.split(' ').map(&:to_i)
  
  puts (x < a ? 0 : 10).to_s
end

if self.to_s == 'main' then
  main(ARGV)
end