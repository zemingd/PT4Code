num = gets.split(" ")
p = []
num.each do |i|
  p.push(i.to_i)
end
p.sort!
puts("#{p[0]} #{p[1]} #{p[2]}")