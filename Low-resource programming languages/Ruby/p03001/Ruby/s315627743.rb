k = gets.chomp.split.map(&:to_i)

if k[0] == k[2] * 2 && k[1] == k[3] * 2
  puts "#{k[0] * k[1] /2} 1"
else
  puts "#{k[0] * k[1] /2} 0"
end