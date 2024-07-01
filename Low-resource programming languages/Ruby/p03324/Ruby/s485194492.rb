a = []
a = gets.split.map(&:to_i)
if a[1] != 100
    puts (100**a[0])*a[1]
else
    puts 101*(100**a[0])
end