k = gets.split.map(&:to_i)
a,b=gets.split.map(&:to_i)

if (a % k[0])== 0 || (b % k[0])== 0
    puts 'OK'
elsif (b-a+1) >= k[0] 
    puts b-a
    puts 'OK'
else
    puts 'NG'
end