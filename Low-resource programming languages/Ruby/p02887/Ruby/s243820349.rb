def main(argv)
  n = gets.chomp.to_i
  s = gets.chomp
  
  t = 1
  c = s[0]
  
  (1...n).each do |i|
    if s[i] != c then
      t += 1
      c = s[i]
    end
  end
  
  puts t.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end