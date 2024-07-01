button = []
STDIN.map { |d| button.push(d.to_i) }

sum = 0

2.times do |i|
  if button[0] > button[1]
  bigger = button[0]
  button[0] -= 1 
else
  bigger = button[1]
  button[1] -= 1 
end
sum += bigger
end




