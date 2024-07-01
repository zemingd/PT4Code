s, t = gets.split
a, b = gets.split.map(&:to_i)
u = gets.chomp
if u == s
  p "#{a - 1} #{b}"
else
  p "#{a} #{b - 1}"
end
