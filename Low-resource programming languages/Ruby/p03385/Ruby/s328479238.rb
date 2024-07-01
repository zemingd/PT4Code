S = gets.chomp
if ('a' .. 'c').all?{|c| S.index(c) }
  puts "Yes"
else
  puts "No"
end