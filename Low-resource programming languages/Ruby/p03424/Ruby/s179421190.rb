n = gets.to_i
variation = gets.split.uniq.length
if variation == 3
  puts 'Three'
else
  puts 'Four'
end
