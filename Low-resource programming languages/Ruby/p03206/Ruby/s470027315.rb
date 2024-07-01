res = ["Christmas"]
d = gets.to_i
while d < 25
  res << "Eve"
  d += 1
end
puts res.join(" ")