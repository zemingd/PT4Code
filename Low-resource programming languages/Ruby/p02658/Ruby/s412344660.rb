n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
product = a[1]
if a.include?(0) then
    puts "0"
    exit
end
for i in 1..a.length-1 do
    product = product *  a[i]
    if product > 100000000000000000 then
        puts "-1"
        exit
    end
end
puts product
