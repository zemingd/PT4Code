S = gets.chomp
s1 = S[0..1].to_i
s2 = S[2..3].to_i
 
YY = (0..99)
MM = (1..12)
 
if YY.member?(s1) && MM.member?(s2)
  if MM.member?(s1) && YY.member?(s2)
    puts 'AMBIGUOUS'
  else
    puts 'YYMM'
  end
elsif MM.member?(s1) && YY.member?(s2)
  puts 'MMYY'
else
  puts 'NA'
end