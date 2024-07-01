N = gets.to_i
X = gets.split.map(&:to_i)
X.sort!

ans = 10 ** 9

(X.min..X.max).each do |p|
    sum = 0
    X.each do |x|
        sum += (x - p) ** 2
    end

    ans = [sum, ans].min
end

puts ans