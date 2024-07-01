n = gets.to_i
a = gets.split(" ").map(&:to_i)
b = gets.split(" ").map(&:to_i)
c = gets.split(" ").map(&:to_i)

last_d_num = -1
satis = 0
n.times do |n|
    d_num = a[n] - 1
    if a[n].to_i == last_d_num + 1
        cus = c[d_num-1].to_i
    else
        cus = 0
    end
    satis = satis + b[d_num].to_i + cus
    last_d_num = a[n].to_i
end

puts satis