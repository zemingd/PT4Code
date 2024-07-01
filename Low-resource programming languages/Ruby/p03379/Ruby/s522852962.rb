n = gets.to_i
x = gets.split.map(&:to_i)

s = x.sort
lm = s[n/2-1]
rm = s[n/2]

x.each do |i|
  if i<=lm
    p rm
  else
    p lm
  end
end
