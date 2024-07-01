n = gets.chomp.to_i
words = n.times.map { gets.chomp }
if words.uniq.size != n || words.each_cons(2).any?{ |a, b| a[-1] != b[0] }
  puts "No"
else
  puts "Yes"
end
