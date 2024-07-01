n = gets.to_i
a = gets.split.map &:to_i
b = gets.split.map &:to_i
c = gets.split.map &:to_i
sum = 0
temp = 0
i = 0
a.each do |aa|
  if aa == temp + 1 && i > 0
    sum += c[temp - 1]
  end
  sum += b[aa - 1]
  temp = aa
  i += 1
end
p sum