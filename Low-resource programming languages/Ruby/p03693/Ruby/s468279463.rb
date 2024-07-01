cols = gets.chomp.split(' ').map(&:to_i).sort
if (cols[1].to_s + cols[2].to_s).to_i % 4 == 0
  puts "YES"
else
  puts "NO"
end