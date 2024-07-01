N = gets.to_i
S = gets.chomp.split("")

min = N

turner_to_e = 0
turner_to_w = S[1, N-1].count("E")
leaders_left = S[0]

for i in 1...(N-1) do
  min = [min, turner_to_e + turner_to_w].min
  if leaders_left == "W" then
    turner_to_e += 1
  end
  if S[i+1] == "E" then
    turner_to_w -= 1
  end
  leaders_left = S[i-1]
end

# min = [min, turner_to_e + turner_to_w].min
p min