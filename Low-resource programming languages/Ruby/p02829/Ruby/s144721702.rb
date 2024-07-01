a = []
a.push(gets.chomp.to_i)
a.push(gets.chomp.to_i)

if !a.include?(1)
  p 1
elsif !a.include?(2)
  p 2
else
  p 3
end
