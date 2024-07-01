a, b = gets.split.map(&:to_i)
if (a + b).even? then
    puts (a + b) / 2
else
    puts 'IMPOSSIBLE'
end
