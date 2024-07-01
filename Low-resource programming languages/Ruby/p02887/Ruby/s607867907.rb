N = gets.chomp.to_i
str = gets.chomp
count = 0
str.each_char.with_index do |char, i|
  # 超えるとnil
  if char != str[i+1]
    count += 1
  end
end

puts count
