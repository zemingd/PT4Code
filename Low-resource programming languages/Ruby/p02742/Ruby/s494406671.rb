h, w = gets.chomp.split.map(&:to_i)

if h == 1 and w == 1
  puts 1
elsif h == 1 and w == 2
  puts 1
elsif h == 2 and w ==1
  puts 1
elsif h == 2 and w == 2
  puts 2
end
