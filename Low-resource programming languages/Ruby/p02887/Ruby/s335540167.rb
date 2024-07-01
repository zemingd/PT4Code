N = gets.to_i
S = gets.chomp.split("")
s = 0
n = 0

for s in 0..N-1
  if S[s] == S[s+1]
    S[s] = 0
    n += 1
  end
end

puts N - n