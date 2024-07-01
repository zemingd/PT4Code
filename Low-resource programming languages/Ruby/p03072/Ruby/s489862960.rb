N = gets
arr = gets.chomp.split.map(&:to_i)

max = 0
cnt = 0
arr.each do |i|
  cnt += 1 if i >= max
  max = [max, i].max
end
puts cnt
