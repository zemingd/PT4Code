N = gets.to_i
A = gets.split.map(&:to_i)

cur = 1

A.each do |a|
  if a == cur
    cur += 1
  end
end

if cur == 1
  puts -1
else
  puts N - cur + 1
end
