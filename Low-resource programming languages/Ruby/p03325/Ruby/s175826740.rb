n = gets.to_i
as = gets.strip.split.map(&:to_i)

mx = 0
as.each do |a|
    cnt = 0
    while a % 2 == 0 do
        cnt += 1
        a /= 2
    end
    mx += cnt
end

puts mx