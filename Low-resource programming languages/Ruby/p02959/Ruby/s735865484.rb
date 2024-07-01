# require 'pp'
N = gets.to_i
a = gets.split.map(&:to_i)
org = a.inject(:+)
b = gets.split.map(&:to_i) + [0]
for i in 0..N
    if a[i] <= b[i-1]
        b[i-1] = b[i-1] - a[i]
        a[i] = 0
    else
        a[i] = a[i] - b[i-1]
        b[i-1] = 0
    end
    if a[i] <= b[i]
        b[i] = b[i] - a[i]
        a[i] = 0
    else
        a[i] = a[i] - b[i]
        b[i] = 0
    end
    # puts "i = #{i}"
    # pp a
    # pp b
end
dst = a.inject(:+)
puts org - dst