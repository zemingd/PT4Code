n = gets.strip
sum = 0
n.split('').map(&:to_i).each do |i|
  sum += i
end
if (n.to_i % sum).zero?
  p 'Yes'
else
  p 'No'
end
