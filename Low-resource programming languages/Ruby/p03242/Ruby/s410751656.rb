n = gets.chomp.split("")
m = []
n.each do |i|
  if i == "1"
    m << 9
  elsif i == "9"
    m << 1
  else
    m << i.to_i
  end
end
puts m.join("")
