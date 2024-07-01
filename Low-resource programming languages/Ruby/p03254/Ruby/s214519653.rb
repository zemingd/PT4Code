n,x = gets.split.map(&:to_i)
kids = gets.split.map(&:to_i).sort

cnt = 0

while kids.size > 0
  if x >= kids.first
    cnt += 1
    kids.shift
  else
    break
  end
end

puts cnt