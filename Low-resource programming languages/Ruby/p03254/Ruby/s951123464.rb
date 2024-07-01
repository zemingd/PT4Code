N, x = gets.chomp.split.map(&:to_i)
A = gets.chomp.split.map(&:to_i).sort

ans = 0
A.each do |a|
  if x >= a
    ans += 1
    x -= a
  else
    break
  end
end

if ans < N or x == 0
  puts ans
else
  puts ans - 1
end