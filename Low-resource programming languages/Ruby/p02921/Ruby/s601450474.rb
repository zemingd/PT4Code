S = gets.strip.to_s
T = gets.strip.to_s
sum = 0
i = 0
while i < 3 do
  if S[i] == T[i]
    sum += 1
  end
  i += 1
end
puts sum