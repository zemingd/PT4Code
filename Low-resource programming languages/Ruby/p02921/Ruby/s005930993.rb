T = gets.chomp
S = gets.chomp

n=0

for i in 0..2
  if T[i] == S[i] then
    n+=1
  end
end

puts n