n = gets.chomp.to_i
ary_num = gets.chomp.split.map(&:to_i)

if ary_num.uniq?
  puts 'YES'
else
  puts 'NO'
end