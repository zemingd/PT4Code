n = gets.chomp.split("").map(&:to_i)
red = 0
blue = 0
for i in 0..n.length-1
  if n[i] == 0
    red += 1
  else
    blue += 1
  end
end
puts ([red,blue].min)*2
