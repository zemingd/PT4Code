require 'set'
require 'pp'

n, k = gets.chomp!.split(" ").map!(&:to_i)
v_n = gets.chomp!.split(" ").map!(&:to_i)

# 左からn個とったときと右からn個とったときの合計値のメモ
memo = {
    left: { 0 => 0 },
    right: { 0 => 0}
}

# 左からi個とり右からj個とったときの合計
memo2 = {
    0 => { 0 => 0 }
}

[n, k].min.times do |i|
    memo[:left][i + 1] = memo[:left][i] + v_n[i]
    memo[:right][i + 1] = memo[:right][i] + v_n[n-1-i]
    memo2[i + 1] = {}
end



[k+1, n+1].min.times do |i|
    # i個とることを考える
    [k+1, n+1].min.times do |j|
        if i + j > k
            break
        end
        memo2[i] ||= {}

        # 左からi個とり，右からj個とったときの合計
        sum = memo[:left][i] + memo[:right][j]
        memo2[i][j] = sum
    end
end

max = 0
memo2.each do |left, mem|
    mem.each do |right, sum|
        remain = k - (left + right)
        tmp = (v_n[0, left] + v_n[v_n.size - right, right]).sort
        remain.times do |i|
            if tmp[i] && tmp[i] < 0
                sum -= tmp[i]
            end
        end

        #puts "left=#{left}, right=#{right}, remain=#{remain}, sum=#{sum}"

        if sum > max
            max = sum
        end
    end
end

puts max
