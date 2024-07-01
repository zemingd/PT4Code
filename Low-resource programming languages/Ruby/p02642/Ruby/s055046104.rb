N = gets.to_i
a = gets.split(" ").map(&:to_i)
if N >= 2
  if a[0] == a[1]
    cnt = 0
  else
    puts 0
    exit
  end
else
  cnt = 0
end
a.sort!
1.upto(a.size-1) do |i|
  f = 1
  if i != a.size-1
    if a[i] == a[i+1]
      next
    end
  end
  (i-1).downto(0) do |j|
    if a[i] % a[j] == 0
      f = 0; break
    end
  end
  if f == 1
    cnt += 1
  end
end
puts cnt