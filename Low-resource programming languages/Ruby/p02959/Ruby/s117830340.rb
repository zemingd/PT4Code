n = gets.to_i
a = gets.split(' ').map(&:to_i)
b = gets.split(' ').map(&:to_i)
count = 0
n.times do |c|
    if a[c] + a[c+1] < b[c]
        count += a[c] + a[c+1]
        a[c] = 0
        a[c+1] = 0
    elsif  a[c] + a[c+1] >= b[c]
        count += b[c]
        b[c] = b[c] - a[c]
        if b[c] > 0
            a[c+1] = a[c+1] +(a[c]-b[c])
        end
    end
end

puts count
