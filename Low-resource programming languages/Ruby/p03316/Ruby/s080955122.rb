n = gets.strip
sum = 0
n.split('').map(&:to_i).each do |n|
  sum+=n
end
if n.to_i % sum == 0
  p 'Yes'
else
  p 'No'
end
