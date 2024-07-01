 _, k = gets.split.map(&:to_i)
cnt = {}
gets.split.map(&:to_i).each { |e| cnt[e] ||= 0; cnt[e] += 1 }
puts cnt.select { |key,_| key > k }.inject(0) { |acc,t| acc+t[1] }