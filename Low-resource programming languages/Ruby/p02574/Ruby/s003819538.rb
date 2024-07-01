require "prime"
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
res = a[0]
h = Hash.new(0)
is_pairwise_coprime = true
n.times do |i|
    if is_pairwise_coprime then
        Prime.prime_division(a[i]).each do |num, cnt|
            if h.has_key?(num) then
                is_pairwise_coprime = false
                break
            end
            h[num] += 1
        end
    end
    res = res.gcd(a[i])
end

if is_pairwise_coprime then
    puts "pairwise coprime"
elsif res == 1 then
    puts "setwise coprime"
else
    puts "not coprime"
end