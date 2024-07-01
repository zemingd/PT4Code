a, b, c, d = gets.split.map(&:to_i)
if ((a-b).abs <= d && (b-c).abs <= d) || (a-c).abs <= d
    puts 'Yes'
else
    puts 'No'
end