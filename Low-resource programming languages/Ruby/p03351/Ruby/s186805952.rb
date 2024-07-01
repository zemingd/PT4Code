a, b, c, d = gets.split.map(&:to_i)

if (a - c).abs <= d
  puts 'Yes'
  exit
end

if (a - b).abs <= d && (b - c).abs <= d
  puts 'Yes'
  exit
end

puts 'No'
