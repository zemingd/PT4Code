lines = gets.split(' ')

k = lines[0].to_i
j = lines[1].to_i
h = lines[2].to_i

if k / h <= j
  p "Yes"
else
  p "No"
end