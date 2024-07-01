n, m = gets.chomp.split(" ").map(&:to_i)

a = ""
n.times do
  a = "#{a}#{m}"
end

b = ""
m.times do
  b = "#{b}#{n}"
end

if n > m
  print a
else
  print b
end