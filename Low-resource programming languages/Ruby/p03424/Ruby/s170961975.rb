N = gets.to_i
S = gets.split

if S.uniq.size == 4
  puts 'Four'
else
  puts 'Three'
end