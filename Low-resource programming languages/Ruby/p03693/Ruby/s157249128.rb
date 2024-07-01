k = 0

gets.chomp.split(' ').reverse.each.with_index do |item, index|
  k += (10 ** index) * item.to_i
end

if k % 4 == 0
  puts 'YES'
else
  puts 'NO'
end