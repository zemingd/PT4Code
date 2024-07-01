n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
a.sort!

for i in 0..(m-1) do
  b, c = gets.chomp.split(" ").map(&:to_i)
  if a[b-1] <= c
    a.fill(c, 0, b)
  end
  a.sort!
end

puts a.inject(:+)