s = gets.chomp
s1 = s[0..1].to_i
s2 = s[2..3].to_i
def search(x)
  (1..12).include?(x)
end
if search(s1) && search(s2)
  puts 'AMBIGUOUS'
elsif search(s1)
  puts 'MMYY'
elsif search(s2)
  puts 'YYMM'
else
  puts 'NA'
end
