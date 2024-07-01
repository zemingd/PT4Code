numbers = gets.chomp.chars.map(&:to_i)
if numbers[0] + numbers[1] + numbers[2] + numbers[3] == 7
  puts "#{numbers[0]}+#{numbers[1]}+#{numbers[2]}+#{numbers[3]}=7"
elsif numbers[0] - numbers[1] + numbers[2] + numbers[3] == 7
  puts "#{numbers[0]}-#{numbers[1]}+#{numbers[2]}+#{numbers[3]}=7"
elsif numbers[0] + numbers[1] - numbers[2] + numbers[3] == 7
  puts "#{numbers[0]}+#{numbers[1]}-#{numbers[2]}+#{numbers[3]}=7"
elsif numbers[0] + numbers[1] + numbers[2] - numbers[3] == 7
  puts "#{numbers[0]}+#{numbers[1]}+#{numbers[2]}-#{numbers[3]}=7"
elsif numbers[0] - numbers[1] - numbers[2] + numbers[3] == 7
  puts "#{numbers[0]}-#{numbers[1]}-#{numbers[2]}+#{numbers[3]}=7"
elsif numbers[0] + numbers[1] - numbers[2] - numbers[3] == 7
  puts "#{numbers[0]}+#{numbers[1]}-#{numbers[2]}-#{numbers[3]}=7"
elsif numbers[0] - numbers[1] + numbers[2] - numbers[3] == 7
  puts "#{numbers[0]}-#{numbers[1]}+#{numbers[2]}-#{numbers[3]}=7"
elsif numbers[0] - numbers[1] - numbers[2] - numbers[3] == 7
  puts "#{numbers[0]}-#{numbers[1]}-#{numbers[2]}-#{numbers[3]}=7"
end