a,b,c,d = gets.chomp.split.map(&:to_i)
if (a/d.to_f) < (c/b.to_f)
    puts 'No'
else puts 'Yes'
end