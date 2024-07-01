n = gets.to_i
ps = gets.chomp.split.map(&:to_i)
current = 10**9
cnt = 0
ps.each do |p|
  if p < current
    cnt += 1
    current = p
  end
end
puts cnt