n = gets.to_i

s = gets.split('')

result = 300000
n.times do |i|
  if i == 0
    count = s[i+1..n-1].count('E')
  elsif i == n-1
    count = s[0..n-2].count('W')
  else
    count = s[0..i-1].count('W') + s[i+1..n-1].count('E')
  end
  if count < result
    result = count
  end
end
puts result
