require 'set'
require 'pp'

n, k = gets.chomp!.split(" ").map!(&:to_i)
v_n = gets.chomp!.split(" ").map!(&:to_i)

r = [k, n].min # < 50
max = 0

# i個とる
0.upto(r) do |i|
    # 左からからj個とる.右からi-j個とる
    0.upto(i) do |j|
        0.upto(i) do |l|
            if l + j > k
                break
            end
            jewelries = (v_n[0, j] + v_n[v_n.size - l, l]).sort
            
            # 残った回数分負数を除く
            rem = k - (j + l)
            rem.times do |m|
                if jewelries[m] && jewelries[m] < 0
                    jewelries.shift
                end
            end
            #pp jewelries
            sum = jewelries.inject(0) {|s, x| s += x }
            #puts "i=#{i}, j=#{j}, l=#{l}, sum=#{sum}"

            if sum > max
                max = sum
            end
        end
    end
end

puts max
