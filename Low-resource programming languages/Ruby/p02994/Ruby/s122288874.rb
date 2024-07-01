N, L = gets.split.map(&:to_i)
T = L+N-1
sum = (L..T).inject(:+)
puts (
if L*T <= 0
    sum
elsif L > 0
    sum - L
else
    sum - T
end)