N = gets.to_i
S = gets.chomp.split("")

min = N

for i in 0...N do
  leader = i
  if leader == 0 then
    turner_to_e = 0
    turner_to_w = S[1...N].count("E")
  else
    leaders_west = leader - 1
    if S[leaders_west] == "W" then
      turner_to_e += 1
    end
    if S[leader] == "E" then
      turner_to_w -= 1
    end
  end
  min = [min, turner_to_e + turner_to_w].min
end

p min