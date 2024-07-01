N = gets.to_i
S = gets.strip.split.map
if S.uniq.size == 3
    puts 'Three'
else
    puts 'Four'
end
