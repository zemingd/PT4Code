n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
cnt = 0
n.times do |i|
  if p[i] != i+1
    cnt += 1
  end
end
if cnt == 0 || cnt == 2
  puts "YES"
else
  puts "NO"
end

