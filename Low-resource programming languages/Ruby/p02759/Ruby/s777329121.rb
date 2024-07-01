digit_number, requirements_count = gets.chomp.split(' ').map(&:to_i)

requirements = []
requirements_count.times do
  requirements << gets.chomp.split(' ').map(&:to_i)
end

result = Array.new(digit_number, 0)

f_flag = false


requirements.each do |req|
  target_index = req[0] - 1
  
  if (digit_number >= 2) && (target_index == 0) && req[1] == 0 
    f_flag = true
    break
  elsif  result[target_index] != 0  && result[target_index] != req[1] 
    f_flag = true
    break
  else
    result[target_index] = req[1]
  end
end

result[0] = 1 if digit_number >= 2 && result[0] == 0

if f_flag
  puts -1
else
  puts "#{result[0]}#{result[1]}#{result[2]}".to_i
end
