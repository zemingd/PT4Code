n, m = gets.chomp.split(" ").map(&:to_i);
as = gets.chomp.split(" ").map(&:to_i);

as.sort!.reverse!

index = 0
m.times do
  head = as.shift
  break if (head == 0)
  head /= 2
  index -= 1 if index > 0
  i = index
  while true do
          break if (as.size - 1) == i || as.size == 0
    a=as[i]
    if head > a
      index=i
      break
    end
    i+=1
  end
  if index == 0
     as = [head].concat(as)
  else
     as = as[0..(index-1)].concat([head].concat(as[(index)..-1]))
  end
end

sum = 0
as.each do |a|
        sum += a
end

puts sum