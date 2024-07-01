N = gets.to_i
S = gets.chomp.to_s
ans=0
S.size.times do |i|
  if S[i]=='A'
    if S[i+1]=='B'
      if S[i+2]=='C'
        ans += 1
      end
    end
  end
end
puts ans