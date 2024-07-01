n = gets.to_i
a = gets.split.map(&:to_i).sort

x = []

a.each_with_index do |e, i|
    next if i > 0 && a[i-1] == e
    b = true
    x.each do |y|
        break if 2 * y > e

        if e % y == 0
            b = false
            break
        end
    end

    x << e if b
end

s = n > 1 && a[0] == a[1] ? 1 : 0
p x.size - s