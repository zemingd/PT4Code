puts gets.chomp.chars.map { |n|
  n == '1' ? '9' : '1'
}.join