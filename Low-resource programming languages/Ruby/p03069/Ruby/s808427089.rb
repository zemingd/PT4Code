N = gets.to_i
S = gets.chomp
ans = 0
while S.match("#.")
  (N-1).downto(0) do |i|
    if S[i] == "#" then S[i] = "" else break end
  end
  0.upto(S.length-1) do |j|
    if S[j] == "." then S[j] = "" else break end
  end

  if !(S.match("#"))||!(S.match(".")) then puts ans; exit end
  for i in 0...S.length-1
    if S[i..i+1] == "#." then ans += 1; S[i+1] = "#" end
  end
end