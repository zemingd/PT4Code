a = STDIN.gets.split.map do |i| i.to_i end
cnt = 0
(a[0]..a[1]).each do |i| cnt += 1 if a[2] % i == 0 end
puts cnt