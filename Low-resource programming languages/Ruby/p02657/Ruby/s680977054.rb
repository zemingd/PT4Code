n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
product = 1
if a.include?(0)
    puts "0"
    exit
end
for i in 0..(a.length - 1) do
    product = product *  a[i]
    if product >  1000000000000000000
        puts "-1"
        exit
    end
end
puts product
