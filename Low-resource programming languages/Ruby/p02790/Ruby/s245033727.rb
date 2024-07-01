N, M = gets.chomp.split.map(&:to_i)
wk = 0
kr = 0

if N < M then
  wk = N
  kr = M
elsif N > M then
  wk = M
  kr = N
else
  wk = N
  kr = N
end

ans = ""
while kr > 0 do
  ans = ans + wk.to_s
  kr = kr - 1
end
puts ans