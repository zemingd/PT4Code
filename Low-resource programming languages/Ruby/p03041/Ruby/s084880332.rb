def main(argv)
  (n, k) = gets.chomp.split(' ').map(&:to_i)
  s = gets.chomp
  
  s[k - 1] = s[k - 1].downcase!
  
  puts s
end

if self.to_s == 'main' then
  main(ARGV)
end