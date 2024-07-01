N = gets.to_i
S = gets.chomp.split("")

min = N

turner_to_e = 0
turner_to_w = S.count("E")
leader = S[0]

for i in 1...N do
  min = [min, turner_to_e + turner_to_w].min
  if leader == "W" then
    turner_to_e += 1
  end
  if S[i] == "E" then
    turner_to_w -= 1
  end
  leader = S[i]
end

p min