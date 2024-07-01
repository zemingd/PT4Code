def check_575(array)
  appear_count_5, appear_count_7 = 0, 0

  array.each do |s|
    appear_count_5 += 1 if s == '5'
    appear_count_7 += 1 if s == '7'
  end

  appear_count_5 == 2 && appear_count_7 == 1
end

puts check_575(gets.split) ? 'YES' : 'NO'
