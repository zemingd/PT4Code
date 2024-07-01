n, m = gets.split.map(&:to_i)

xs = gets.split.map(&:to_i)
xs.sort!

diff = []
for i in 0..(m-2) do
  diff << xs[i+1] - xs[i]
end

diff.sort! { |a, b| b<=>a }

if m == 1
  puts 0
else
  puts diff[(n-1)..(m-1)].inject(:+)
end