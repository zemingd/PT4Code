require 'pp'

n, m = gets.chomp!.split(" ").map!(&:to_i)

k_m = Array.new(0, m)
s_m = Array.new(0, m)
m.times do |i|
    k, *s = gets.chomp!.split(" ").map!(&:to_i)
    k_m << k
    s_m << s
end

p_m = gets.chomp!.split(" ").map!(&:to_i)

sums = m.times.map do |i|
    sum = 0
    s_m[i].each {|s|
        sum += (2 ** (s-1)) 
    }
    sum
end

count = 0
(2 ** n).times do |i|
    ok = true
    sums.each_with_index {|sum, x|
        if (sum & i).to_s(2).count("1") % 2 != p_m[x]
          ok = false
          break
        end
    }

    count += (ok ? 1 : 0)
end

puts count
