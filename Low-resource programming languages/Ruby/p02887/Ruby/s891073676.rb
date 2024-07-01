N=gets.to_i
S=gets.chomp
length=0

for i in 0..N-1 do
  if S[i]==S[i+1] then
    next
  end
  length+=1
end

print("#{length}")
