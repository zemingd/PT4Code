n   = gets.to_i
sum = 0
ary = []

n.times do
  ary << gets.to_i
  sum += ary[-1]
end

ary.sort!

if sum % 10 == 0
  i = 0
  while ary[i] % 10 == 0
    if i >= n - 1
      puts 0
      exit
    else
      i += 1
    end
  end
  puts sum - ary[i]
else
  puts sum
end
