 x, k, d = gets.chomp.split(' ').map(&:to_i)
 
 y = x.abs / d
 
 if(k%2==0 && x.abs==k)
  puts x.abs
 elsif(k%2==1 && x.abs==k)
  puts 0
 elsif(k%2==0 && y < k)
  puts (x - y * d).abs
 elsif(k%2 == 1 && y < k)
  x = x - d
  puts (x - y * d).abs
 elsif(k%2==0)
  puts x - d * (y - k)
 else
  puts x - d * k
 end
