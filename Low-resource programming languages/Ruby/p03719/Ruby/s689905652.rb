N, M = gets.split.map &:to_i;
cnt = Array.new(n,0)
M.times do 
    a,b = gets.split.map &:to_i
    cnt[a-1] += 1
    cnt[b-1] += 1
end
cnt.each do |i|
    puts i
end