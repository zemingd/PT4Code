n = gets.to_i
ary = []
n.times do
  ary << gets.to_i
end
if (ary.sum)%10 != 0
  puts ary.sum
else
  ary.sort!
  for i in 0..n-1
    if ary[i]%10 != 0
      puts ary.sum-ary[i]
      exit
    end
  end
  puts 0
end