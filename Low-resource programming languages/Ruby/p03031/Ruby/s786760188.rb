n, m = gets.chomp.split(' ').map(&:to_i)
ss = m.times.map { gets.chomp.split(' ').drop(1) }
ps = gets.chomp.split(' ')

cnt = 0
(0...2**m).each do |ptn|
    switches = (0...n).map { |i| (ptn / 2 ** i) % 2 }
    on = true
    ss.zip(ps).each do |nums, ons|
        on_cnt = nums.map { |n| switches[n.to_i - 1] }.reduce(:+)
        if on_cnt % 2 != ons.to_i
            on = false
            break
        end
    end
    next if !on
    cnt = cnt + 1
end

puts cnt
