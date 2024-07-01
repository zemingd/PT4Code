n=gets.chomp.split(' ')

if n[0]>n[1]
    puts '>'
elsif n[0]==n[1]
    puts '='
else
    puts '<'
end