a, b = gets.chomp.split.map(&:to_i)
count = 0
(a..b).each do |num|
  string_num = num.to_s
  if string_num[0] == string_num[4] && string_num[1] == string_num[3]
  count += 1
  end
end
puts count
