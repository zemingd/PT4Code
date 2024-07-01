
n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
moto = a.size
a = a.unshift(0)
aa = 0
nn = n + 1
nn.times do |i|
    if a[i] != i - aa
        a[i] = " "
        aa += 1
    end
end
if moto == aa
    puts "-1"
else
    puts aa
end