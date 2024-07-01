seconds = gets.chomp.to_i
seconds = gets.chomp.split(' ')
drink_num = gets.chomp.to_i
for i in 0..drink_num-1 do
  sum = 0
  drink = gets.chomp.split(' ')
  seconds.each_with_index do |s, j|
    sum += s.to_i if j != drink[0].to_i-1
    sum += drink[1].to_i if j == drink[0].to_i-1
  end
  puts sum
end
