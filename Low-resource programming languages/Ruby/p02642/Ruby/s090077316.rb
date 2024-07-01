N = gets.chomp.to_i
aArr = gets.chomp.split(' ').map(&:to_i)
# aArr.sort!

cnt = Array.new(1000001, 0)
aArr.each do |a|
    ma = a
    while ma <= 1000000 do
        cnt[ma] += 1
        ma += a
    end
end

ans = 0

aArr.each do |a|
    # puts a.to_s + " : " + cnt[a].to_s
    ans += 1 if cnt[a] == 1
end

puts ans