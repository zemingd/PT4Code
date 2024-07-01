a, b, c, d = gets.split(' ').map(&:to_i)

ab = (b-a).abs
bc = (c-b).abs
ac = (c-a).abs

if ac <= d || ( ab <= d && bc <= d )
  puts 'Yes'
else
  puts 'No'
end
