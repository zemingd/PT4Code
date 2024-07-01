a,b = gets.split.map(&:to_i)
if a*b%2 == 0
  p 'Yes'
else
  p 'No'
end