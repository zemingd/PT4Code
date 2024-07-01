n = gets.to_i
as = gets.split.map(&:to_i)

cnt = 0
cur = 0

as.each do |i|
  if i == cur + 1
    cnt += 1
    cur = i
  end
end

if cnt == 0
  puts -1
else
  puts n - cnt
end