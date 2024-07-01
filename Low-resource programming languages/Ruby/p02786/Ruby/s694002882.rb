h = gets.chomp.to_i

if h == 1
  puts 1
else
  puts 2 ** (Math.log2(h).floor + 1) - 1
end
