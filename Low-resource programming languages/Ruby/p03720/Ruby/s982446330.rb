N, M= gets.split.map &:to_i;
cnt = Array.new(N,0)
M.times do |i|
    a,b = gets.split.map &:to_i
    cnt[a-1] += 1
    cnt[b-1] += 1
end
cnt.each do |i|
    puts i
end