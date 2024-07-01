s = gets.chomp
a = s.scan(/[ATGC]{1,10}/).max
if a.nil?
  puts 0
else
  puts a
end