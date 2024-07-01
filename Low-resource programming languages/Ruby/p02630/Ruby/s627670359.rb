N = gets.chomp.to_i
aAry = gets.chomp.split.map(&:to_i)
Q = gets.chomp.to_i

# 各Qで毎回 Array#sum するとそれ自体にループが含まれるので最大 100,000 アイテムの 2重ループになってダメ。
# 初期値の合計値を取っておいて、毎回のQでは変化した要素の分だけ引いたり足したりしてやる。
nAry = Array.new(10 ** 5 + 1, 0)

aAry.each do |a|
    nAry[a] += 1
end

ans = 0
nAry.size.times { |n| ans += n * nAry[n] }
p ans

Q.times do
    b, c = gets.chomp.split.map(&:to_i)
    if nAry[b] != 0 then
        ans -= b * nAry[b]
        ans -= c * nAry[c]
        nAry[c] += nAry[b]
        nAry[b] = 0
        ans += c * nAry[c]
    end
    puts ans
end