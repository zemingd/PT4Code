def month_candidate?(x)
  (1 <= x) && (x <= 12)
end

def main(argv)
  s = gets.chomp
  
  f = month_candidate((s[0] + s[1]).to_i)
  g = month_candidate((s[2] + s[3]).to_i)
  
  if (f && g) then
    puts 'AMBIGUOUS'
  elsif f then
    puts 'MMYY'
  elsif g then
    puts 'YYMM'
  else
    puts 'NA'
  end
end

if self.to_s == 'main' then
  main(ARGV)
end