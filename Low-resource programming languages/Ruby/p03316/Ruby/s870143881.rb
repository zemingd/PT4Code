n = gets.strip
sum = n.split('').inject do |a|
  a.to_i
end
if n.to_i % sum == 0
  p "yes"
else
  p "no"
end