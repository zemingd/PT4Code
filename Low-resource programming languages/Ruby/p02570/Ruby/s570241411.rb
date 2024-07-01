puts 'D T S'
input_line = gets.chomp.split(' ')
distance = input_line[0].to_i
puts "D=#{distance}"
limit_time = input_line[1].to_i
puts "D=#{limit_time}"
speed = input_line[2].to_i
puts "S=#{speed}"
time = distance/speed
if time <= limit_time  # 待ち合わせ時刻に到着した場合
  puts 'yes'
else  # 待ち合わせ時刻に到着しなかった場合
  puts 'no'
end
