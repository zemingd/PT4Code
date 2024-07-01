n = gets.to_i
as = gets.split.map(&:to_i)

cnt = 1
as.each do |x|
  cnt += 1 if cnt == x
end

puts (cnt==1) ? -1 : n-cnt+1
