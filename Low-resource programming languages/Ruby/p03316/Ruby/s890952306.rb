n = gets.strip
sum = n.split('').inject(0){ |sum1, i| sum1 + i.to_i }
if n.to_i % sum == 0
  p 'Yes\n'
else
  p 'Yes\n'
end
