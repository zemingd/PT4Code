N = gets.chomp.to_i
S = gets.chomp

if(N == 1)
  print "No"
else
  if(S[N / 2, N / 2] == S[0, N / 2])
    print "Yes"
  else
    print "No"
  end
end

#p S[N / 2, N / 2]
#p S[0, N / 2]