n = gets.to_i
x = gets.chomp.reverse

c = x.count(?1)

pow2_mod_up1 = Array.new(n)
pow2_mod_up1[0] = c + 1 < 2 ? 0 : 1
(n-1).times do |i|
    pow2_mod_up1[i+1] = pow2_mod_up1[i] << 1
    pow2_mod_up1[i+1] -= c + 1 if pow2_mod_up1[i+1] >= c + 1
end

pow2_mod_down1 = Array.new(n)
pow2_mod_down1[0] = c - 1 < 2 ? 0 : 1
(n-1).times do |i|
    pow2_mod_down1[i+1] = pow2_mod_down1[i] << 1
    pow2_mod_down1[i+1] -= c - 1 if c > 1 && pow2_mod_down1[i+1] >= c - 1
end

x_mod_up1 = x_mod_down1 = 0
n.times do |i|
    x_mod_up1 += pow2_mod_up1[i] * x[i].to_i
    x_mod_down1 += pow2_mod_down1[i] * x[i].to_i
end
x_mod_up1 %= c + 1
x_mod_down1 %= c - 1 if c > 1

n.times do |i|
    i = n - i - 1
    if x[i].to_i == 0
        a = (x_mod_up1 + pow2_mod_up1[i]) % (c + 1)
    else
        a = c <= 1 ? 0 : (x_mod_down1 + pow2_mod_down1[i]) % (c - 1)
    end

    ans = 1
    while a != 0
        a %= a.to_s(2).each_char.count(?1)
        ans += 1
    end
    p ans
end