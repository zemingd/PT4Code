n = gets.to_i
x = gets.chomp
c = x.count(?1)

pow2_mod_up1 = Array.new(n, 0)
if c > 0
    pow2_mod_up1[0] = 1
    (n-1).times{|i| pow2_mod_up1[i+1] = (pow2_mod_up1[i] << 1) % (c+1)}
end

pow2_mod_down1 = Array.new(n, 0)
if c > 2
    pow2_mod_down1[0] = 1
    (n-1).times {|i| pow2_mod_down1[i+1] = (pow2_mod_down1[i] << 1) % (c-1)}
end

x_mod_up1 = x_mod_down1 = 0
n.times do |i|
    x_mod_up1 += pow2_mod_up1[n-i-1] * x[i].to_i
    x_mod_down1 += pow2_mod_down1[n-i-1] * x[i].to_i
end
x_mod_up1 %= c + 1
x_mod_down1 %= c - 1 if c > 2

n.times do |i|
    if x[i] == ?0
        a = (x_mod_up1 + pow2_mod_up1[n-i-1]) % (c+1)
    else
        if c == 1
            puts 0
            next
        end
        a = (x_mod_down1 - pow2_mod_down1[n-i-1]) % (c-1)
    end

    ans = 1
    while a != 0
        a %= a.to_s(2).each_char.count(?1)
        ans += 1
    end
    p ans
end