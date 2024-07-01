s = gets.chomp

s1 = s[0, 2].to_i
s2 = s[2, 2].to_i

def checkMM(n)
  true if 1 <= n && n <= 12
end

if checkMM(s1) && checkMM(s2) then
  puts "AMBIGUOUS"
elsif checkMM(s1) then
  puts "MMYY"
elsif checkMM(s2) then
  puts "YYMM"
else
  puts "NA"
end