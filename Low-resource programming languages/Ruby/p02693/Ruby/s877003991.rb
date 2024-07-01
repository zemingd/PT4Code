k = gets.split(&:to_i)
a,b=gets.split.map(&:to_i)

if (a % k[0])== 0 || (b % k[0])== 0
    puts 'OK'
elsif (b-a) >= k[0] 
    puts 'OK'
else
    puts 'NG'
end