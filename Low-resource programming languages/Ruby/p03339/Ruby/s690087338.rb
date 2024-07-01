N = gets.to_i
S = gets.chomp

east = Array.new(N+1,0)
west = Array.new(N+1,0)

for i in 1..N do
  if S[i-1] == "E"
    east[i] = east[i-1] + 1
    west[i] = west[i-1]
  else
    east[i] = east[i-1]
    west[i] = west[i-1] + 1
  end
end

min = 10**6
for i in 1..N do
  tmp = west[i-1] + (east[N] - east[i])
  min = tmp if tmp < min
end

puts min
