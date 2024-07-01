n, x = gets.split.map &:to_i
a = gets.split.map(&:to_i).sort
r = 0
j = 0
(0...n).each do |i|
  x -= a[i]
  if x == 0
    puts j + 1
    exit
  elsif x < 0
    puts j
    exit
  else
    if i + 1 < n && a[i+1] > x
      puts j
      exit
    else
      j += 1
    end
  end
end

puts x > 0 ? j - 1 : j