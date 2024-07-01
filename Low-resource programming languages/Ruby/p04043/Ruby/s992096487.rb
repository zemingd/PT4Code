ary = gets.split.map(&:to_i)
if ary.include?(5) && ary.include?(7) && ary.reduce(:+) == 17
  puts 'YES'
else
  puts 'NO'
end
