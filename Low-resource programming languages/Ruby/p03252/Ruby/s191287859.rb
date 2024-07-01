S=gets.chomp
T=gets.chomp
donelist=[]
S.size.times{|i|
  if S[i]!=T[i] && !donelist.include?(S[i]) then
    for j in i+1...S.size do
      if (S[i]==S[j] && T[i]!=T[j])||(T[i]==T[j] && S[i]!=S[j]) then
        puts "No"
        exit
      end
    end
    donelist << S[i]
  end
}
puts "Yes"