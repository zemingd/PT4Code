D, N = gets.split.map(&:to_i)

if D == 0 then
  ans = N
elsif D == 1 then
  ans = N * 100
elsif D == 2 then
  ans = N * 10000
end

puts ans
