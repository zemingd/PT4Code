X, N = gets.split.map(&:to_i)
P = gets.split.map(&:to_i)

a = 100000
b = 100000
(1..100).each do |x|
    if !P.include?(x) && (as = (x - X).abs) < b then
        b = as
        a = x
    end
end

if a == 100000
    # 0 or 101
    if X <= 50 then
        puts 0
    else
        puts 101
    end
else
    puts a
end
