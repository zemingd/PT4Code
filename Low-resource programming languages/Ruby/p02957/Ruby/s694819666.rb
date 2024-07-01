ary = gets.chomp.split(" ").map(&:to_i)
if (ary[0] + ary[1])%2 == 0
  puts (ary[0] + ary[1])/2
else
  puts "IMPOSSIBLE"
end
