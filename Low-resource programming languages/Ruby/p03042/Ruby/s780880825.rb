numbers = gets.chomp.split('').map(&:to_i).each_slice(2).to_a
array = [numbers[0].join.to_i, numbers[1].join.to_i]
if array.min > 12 || (array.min == 0 && array.max == 0)
  puts "NA"
elsif array.max > 12 && array.min <= 12
  puts "YYMM"
elsif array.min == 0 && array.max <= 12
  puts "MMYY"
elsif array.max <= 12
  puts "AMBIGUOUS"
end