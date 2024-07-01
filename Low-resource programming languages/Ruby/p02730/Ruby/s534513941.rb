S=gets.chomp

if S == S.reverse
  S1,S2 = S.split(S[(S.length-1)/2])
  if S1 == S1.reverse and S2 == S2.reverse
    puts "Yes"
    exit
  end
end
puts "No"
  