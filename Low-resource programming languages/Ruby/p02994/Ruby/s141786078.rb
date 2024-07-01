n,l = gets.split.map(&:to_i)
a = Array.new(n){|i|l+i}
b = a.inject(:+)
ans = 1000000000
n.times do |i|
    ans = b-a[i] if (b-ans).abs > (a[i]).abs
end
puts ans