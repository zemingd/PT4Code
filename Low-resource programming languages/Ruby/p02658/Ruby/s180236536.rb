n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
product = a[1]
for i in 1..a.length-1 do
    product = product *  a[i]
end
if product > 100000000000000000 then
    product = -1
end
puts product
