n,x = gets.split.map(&:to_i)
kids = gets.split.map(&:to_i).sort

cnt = 0

kids.each do |k|
  if x >= k
   x -= k
   cnt += 1
  else
   break
  end
end

puts cnt

