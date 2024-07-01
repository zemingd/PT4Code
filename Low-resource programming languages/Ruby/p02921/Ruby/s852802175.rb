str1 = gets.chomp
str2 = gets.chomp
count = 0

(0..2).each do |i|
  if str1[i] == str2[i]
    count += 1
  end
end

puts count