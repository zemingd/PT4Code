x, k, d = gets.chomp.split(" ").map(&:to_i)

if x == 0 then
    if k & 1 == 1 then
        puts d
    else
        puts 0
    end
    exit
end

c = x.abs / d
if k <= c then
    puts x.abs - k*d
    exit
end

k -= c
sabun = x.abs % d
if sabun > (sabun-d).abs then
    sabun = (sabun-d).abs
    k -= 1
end

if k & 1 == 1 then
    puts (sabun - d).abs
else
    puts sabun
end