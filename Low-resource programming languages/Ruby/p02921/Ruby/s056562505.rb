S = gets.split('')
T = gets.split('')
count = 0

if S[0] == T[0]
  count += 1
end

if S[1] == T[1]
  count += 1
end

if S[2] == T[2]
  count += 1
end

puts count
