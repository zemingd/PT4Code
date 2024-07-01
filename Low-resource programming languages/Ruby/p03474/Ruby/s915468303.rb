a, b = gets.strip.split.map(&:to_i)
s = gets.strip

if /^\d{#{a}}-\d{#{b}}$/ =~ s
    puts 'Yes'
else
    puts 'No'
end
