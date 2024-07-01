D, N = gets.split.map(&:to_i)

if N == 100 then
  if D == 0 then
    ans = N + 1
  elsif D == 1 then
    ans = N * 100 + 100
  elsif D == 2 then
    ans = N * 10000 + 10000
  end
else
  if D == 0 then
    ans = N
  elsif D == 1 then
    ans = N * 100
  elsif D == 2 then
    ans = N * 10000
  end
end

puts ans
