n = gets.to_i
h = {}

for i in 0..n-1 do
  m = gets.chomp.split(" ")
  h[m[0]] = m[1].to_i
end
puts h.sort