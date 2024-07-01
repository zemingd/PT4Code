S = gets
T = gets
count = 0

for i in 0..2
  if S[i] == T[i]
    count += 1
  end
end

puts count