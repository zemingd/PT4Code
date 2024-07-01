max_num = 10 ** 6
pri = *(0..max_num)

2.upto(max_num) do |i|
    next if pri[i] != i
    i.step(max_num, i) {|x| pri[x] = i}
end

n = gets.to_i
a = gets.split.map(&:to_i)
f = true
g = 0

a.each do |e|
    g = g.gcd(e)

    if f
        while e > 1
            x = pri[e]
            if pri[x] == 0
                f = false
                break
            else
                e /= x while e % x == 0
                pri[x] = 0
            end
        end
    end
end

if f
    puts "pairwise coprime"
elsif g == 1
    puts "setwise coprime"
else
    puts "not coprime"
end
