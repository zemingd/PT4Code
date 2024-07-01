a, b, c = STDIN.gets.split(' ').map(&:to_i)

matched = false
b.times do |i|
  if ((a*(i + 1) % b) == c)
    matched = true
    break
  end
end
  
if matched
  puts 'YES'
else
  puts 'NO'
end