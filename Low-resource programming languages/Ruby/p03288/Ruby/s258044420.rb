r = gets.to_i
c = "AGC"
if r < 1200
  c = "ABC"
elsif r < 2800
  c = "ARC"
end
puts c