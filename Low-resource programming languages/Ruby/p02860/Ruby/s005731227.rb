n = gets.to_i
s = gets.split("").map(&:to_s)
if n.even? == true
  t = n/2
  a = []
  b = []
  a, b = s.each_slice(t).to_a
  puts (a - b).empty? ? "Yes":"No"
else
  puts "No"
end
