N, L = gets.chomp.split(" ").map(&:to_i)

s = N * (L - 1) + (N * (N + 1)) / 2

f = L
l = L + N - 1

if f < 0 && l > 0 then
  puts s
elsif f.abs < l.abs then
  puts (s - f)
else
  puts (s - l)
end
