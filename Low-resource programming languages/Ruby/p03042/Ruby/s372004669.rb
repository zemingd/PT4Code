numbers = gets.chomp.split('').map(&:to_i).each_slice(2).to_a
array = [numbers[0].join.to_i, numbers[1].join.to_i]
if array.include?(0)
  puts "NA"
elsif array.max <= 12 && array.min >= 1
  puts "AMBIGUOUS"
elsif array.max > 12 && array.min >= 1 && array.min <= 12
  puts "YYMM"
else
  puts "MMYY"
end