a,b,c = gets.chomp.split
if a[a.length-1] == b[0] && b[b.length-1] == c[0]
    puts 'YES'
else
    puts 'NO'
end
