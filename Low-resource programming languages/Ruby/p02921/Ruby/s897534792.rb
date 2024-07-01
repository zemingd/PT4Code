S = gets.chomp
T = gets.chomp

r = 0
0.upto(2).each do |i|
  if S[i] == T[i]
    r += 1
  end
end

p r