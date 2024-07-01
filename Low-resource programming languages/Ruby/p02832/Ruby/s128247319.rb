N = gets.to_i+
nums = gets.split(' ').map(&:to_i)

cnt = 0
mark = 1
nums.each do |n|
  if n == mark
    cnt += 1
    mark += 1
  end
end
if cnt == 0
  puts -1
else
  puts (nums.length - cnt)
end