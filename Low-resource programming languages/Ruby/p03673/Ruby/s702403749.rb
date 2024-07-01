n = gets.chomp.to_i
a = [0]
a += gets.chomp.split(" ").map(&:to_i)
a1 = []
a2 = []
(1..n).each do |i|
  if i.even?
    a1 << a[i]
  else
    a2 << a[i]
  end
end
if n.even?
  puts (a1.reverse + a2).join(" ")
else
  puts (a2.reverse + a1).join(" ")
end
