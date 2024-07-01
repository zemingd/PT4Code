M = (1 .. 12)
S = gets.chomp
s1,s2 = [0,2].map{|s| S[s,2].to_i }

if M.include?(s1) && M.include?(s2)
  puts "AMBIGUOUS"
elsif M.include?(s1) && !M.include?(s2)
  puts "MMYY"
elsif !M.include?(s1) && M.include?(s2)
  puts "YYMM"
else
  puts "NA"
end

