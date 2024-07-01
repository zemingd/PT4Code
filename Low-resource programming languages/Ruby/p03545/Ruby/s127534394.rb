ABCD = gets.chomp.chars

ans =
  Array
  .new(8) { |i| format('%03b', i).chars.map { |c| '+-'[c.to_i] } }
  .map { |ops| ABCD.zip(ops).flatten.join }
  .find { |exp| eval(exp) == 7 }

puts "#{ans}=7"
