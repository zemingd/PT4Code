def main(argv)
  n = gets.chomp.to_i
  s = gets.chomp
  
  t = 1
  c = s[0]
  i = 1
  while i < n do
    if s[i] != c then
      t += 1
      c = s[i]
    end
    
    i += 1
  end
  
  puts t.to_s
end

if self.to_s == 'main' then
  main(ARGV)
end