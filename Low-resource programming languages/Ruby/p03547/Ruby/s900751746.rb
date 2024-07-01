a, b = readline.split.map(&:chomp)
if a.to_i(16) > b.to_i(16) 
    puts ">" 
elsif a.to_i(16) < b.to_i(16) 
    puts "<" 
else
    puts "="
end