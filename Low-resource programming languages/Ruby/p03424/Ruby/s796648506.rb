N = gets.to_i
S = gets.chomp.split

if S.uniq.size == 3
  puts 'Three'
else
  puts 'Four'
end
