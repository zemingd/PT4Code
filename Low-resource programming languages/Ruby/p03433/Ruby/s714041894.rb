# ソート

n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)

alice = 0
bob = 0

a.sort!.reverse!

for i in 0..n-1
    if i.even?
        alice += a[i]
    else
        bob += a[i]
    end
end

p alice - bob