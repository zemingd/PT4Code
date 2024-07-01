n = gets.to_i
A = gets.split.map &:to_i

cnt = Array.new(n,0)

A.each do |a|
  cnt[a-1] += 1
end

cnt.each do |c|
  puts c
end
