a,b,c,d = gets.chomp.split.map(&:to_i)

if c > a
  if d > b
    ans = b - c
  else
    ans = d - c
  end
else
  if d > b
    ans = d - a
  else
    ans = b -a
  end
end

if ans <= 0
  puts 0
else
  puts ans
end
