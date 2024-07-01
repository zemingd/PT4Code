S=gets.chomp
S1=S.slice(0,(S.length-1)/2)
S2=S.slice((S.length+1)/2,S.length-1)

if S==S.reverse and S1==S1.reverse and S2==S2.reverse
  puts "Yes"
else
  puts "No"
end