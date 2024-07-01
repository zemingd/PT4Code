x, k, d = gets.chomp.split.map(&:to_i)
cnt = [k, x.abs / d].min
k -= cnt

if cnt == 0
  puts "0"
  exit
end

if x < 0
  x += cnt * d
  if k % 2 != 0
    x += d
  end
elsif x > 0
  x -= cnt * d
  if k % 2 != 0
    x -= d
  end
end
puts x.abs