n = gets.to_i
variation = gets.split.chars.uniq.length
if variation == 3
  puts 'Three'
else
  puts 'Four'
end 
