k = gets.split.map(&:to_i)
a,b=gets.split.map(&:to_i)

if (a % k[0])== 0 || (b % k[0])== 0 || (b-a) >= k[0] || (a < k) && (k < b)
    puts 'OK'
else
    puts 'NG'
end