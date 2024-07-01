a = gets.chomp.split.map(&:to_i)

if a[1] % a[0] == 0 then
    puts a[1] + a[0]
else
    puts a[1] - a[0]
end