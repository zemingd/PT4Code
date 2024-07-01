S = gets
T = gets

count = 0
for i in 0..2 do
  if S[i] == T[i] then
    count +=1
  end
end

p count
