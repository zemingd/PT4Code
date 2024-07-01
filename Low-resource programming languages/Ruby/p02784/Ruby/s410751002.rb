H, N = gets.split.map(&:to_i)
As = gets.split.map(&:to_i)

if H - As.inject(:+) <= 0 then
  ans = "Yes"
else
  ans = "No"
end

puts ans
