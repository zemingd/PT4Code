n = gets.to_i
num = gets.split(' ').map(&:to_i)
count = 0
(0..n-1).each do |a|
    if a+1 != num[a]
        count +=1
    end 
end
if count == 2 || count == 0
    puts 'YES'
else 
    puts 'NO'
end