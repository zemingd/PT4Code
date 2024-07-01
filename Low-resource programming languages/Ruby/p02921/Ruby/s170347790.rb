S = gets.strip.split(//)
T = gets.strip.split(//)
i = 0
0.upto(2) do |j|
  if S[j] == T[j]
    i+=1
  end
end
puts i