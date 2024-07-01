n = gets.to_i

s = gets.split('')

result = 300000
counts = []
n.times do |i|
  if i == 0
    counts << s[i+1..n-1].count('E')
  elsif i == n-1
    counts << s[0..n-2].count('W')
  else
    counts << s[0..i-1].count('W') + s[i+1..n-1].count('E')
  end
end
puts counts.min
