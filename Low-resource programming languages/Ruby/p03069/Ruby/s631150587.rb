N = gets.to_i
S = gets.chomp

p = N - 1
(N - 1).downto(0) do |i|
  p = i
  if S[i] == '.'
    break
  end
end

bc = 0
wc = 0
ans = 0

(p).downto(0) do |i|
  if S[i] == '#'
    bc += 1
  else
    wc += 1
  end

  if bc > wc
    ans += wc
    bc = 0
    wc = 0
  end
end

puts ans + [bc, wc].min