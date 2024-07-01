#!/usr/local/bin/ruby
while line=gets
   rec=line.split(" ").map(&:to_i)
   x,y=rec[0],rec[1]
   ans = x + y
   if 0 < ans and ans < 10
      puts "1"
   elsif 10 <= ans and ans < 100
      puts "2"
   elsif 100 <= ans and ans < 1000
      puts"3"
   elsif 1000 <= ans and ans < 10000
      puts"4"
   elsif 10000 <= ans and ans < 100000
      puts"5"
   elsif 100000 <= ans and ans <= 2000000
      puts"6"
   end
 end