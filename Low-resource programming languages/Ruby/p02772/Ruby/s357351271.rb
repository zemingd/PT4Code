n = gets.to_i
num = gets.chomp.split(' ').map(&:to_i)
num = num.select{|i|i.even?}
flag = true
num.each do |i|
    if (i%3!=0)&&(i%5!=0)
        flag = false
        break
    end
end
if flag
    puts "APPROVED"
else
    puts "DENIED"
end