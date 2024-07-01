n = gets.chomp
array = n.split('').map(&:to_i)
pon_list = [0,1,6,8]

if array[array.length-1] == 3
    puts('bon')
elsif pon_list.include?(array[array.length-1])
    puts('pon')
else
    puts('hon')
end