n = gets.to_i
s = gets.split
flag = false
s.each do |e|
  flag = true if e == "Y"
end
puts flag ? "Four" : "Three"
