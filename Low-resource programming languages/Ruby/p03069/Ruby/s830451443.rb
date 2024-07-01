N=gets.to_i
S=gets.chomp
cnt=0
(N-1).times do |i|
  cnt+=1 if S[i]=="." && S[i+1]=="#"
end
puts cnt
