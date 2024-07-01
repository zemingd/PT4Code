i = 0
str = gets
result = 'false'

while result == 'false' && i <= 9
  result = 'true' if str.include?(i.to_s * 3)
  i += 1
end
puts result == 'true' ? 'Yes' : 'No'