#!/usr/bin/ruby

N, A, B = gets.chomp.split(" ").map(&:to_i)

if (B - A)%2 == 0
   puts (B-A)/2
else
   puts [N-B, A-1].min + 1 + (B-A-1)/2
end
