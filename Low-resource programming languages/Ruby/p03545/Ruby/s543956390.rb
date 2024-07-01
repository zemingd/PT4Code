a, b, c, d = gets.chomp.chars.map(&:to_i)

if a + b + c + d == 7
  puts "#{a}+#{b}+#{c}+#{d}=7"
elsif a + b + c - d == 7
  puts "#{a}+#{b}+#{c}-#{d}=7"
elsif a + b - c + d == 7
  puts "#{a}+#{b}-#{c}+#{d}=7"
elsif a - b + c + d == 7
  puts "#{a}-#{b}+#{c}+#{d}=7"
elsif a - b - c + d == 7
  puts "#{a}-#{b}-#{c}+#{d}=7"
elsif a + b - c - d == 7
  puts "#{a}+#{b}-#{c}-#{d}=7"
elsif a + b - c - d == 7
  puts "#{a}+#{b}-#{c}-#{d}=7"
elsif a - b - c - d == 7
  puts "#{a}-#{b}-#{c}-#{d}=7"
end
