x, k, d = gets.chomp.split(' ').map(&:to_i)

y = x.abs / d

if(k%2==0 && x.abs==k)
 puts x.abs
elsif(k%2==1 && x.abs==k)
 puts 0
elsif(k%2==0 && y < k)
 puts (x.abs - y * d).abs
elsif(k%2 == 1 && y < k)
 x = x.abs - d
 puts (x - y * d).abs
elsif(k%2==0)
 puts x.abs - d * (y - k)
else
 puts x.abs - d * k
end