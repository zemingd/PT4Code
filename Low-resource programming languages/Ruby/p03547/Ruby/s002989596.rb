a, b = gets.split.map{|m|m.to_i(16)}
if a < b
    puts '<'
elsif a > b
    puts '>'
else
    puts '='
end