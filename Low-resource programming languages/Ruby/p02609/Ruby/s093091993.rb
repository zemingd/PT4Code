n = gets.to_i
x = gets.chomp
c = x.count(?1)

up1 = c + 1
down1 = [c - 1, 1].max

pow2_mod_up1 = [up1 == 1 ? 0 : 1]
pow2_mod_down1 = [down1 == 1 ? 0 : 1]
(n-1).times do |i|
    pow2_mod_up1.unshift(pow2_mod_up1[0] * 2 % up1)
    pow2_mod_down1.unshift(pow2_mod_down1[0] * 2 % down1)
end

x_mod_up1 = x_mod_down1 = 0
n.times do |i|
    next if x[i] == ?0
    x_mod_up1 += pow2_mod_up1[i]
    x_mod_down1 += pow2_mod_down1[i]
end

n.times do |i|
    if x[i] == ?0
        a = (x_mod_up1 + pow2_mod_up1[i]) % up1
    else
        if c == 1
            puts 0
            next
        end
        a = (x_mod_down1 - pow2_mod_down1[i]) % down1
    end

    ans = 1
    while a != 0
        a %= a.to_s(2).count(?1)
        ans += 1
    end
    p ans
end