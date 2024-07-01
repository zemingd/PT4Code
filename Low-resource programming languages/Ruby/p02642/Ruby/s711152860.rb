require 'prime'

n = gets.to_i
a = gets.split.map(&:to_i).sort

x = Array.new(a[-1] + 1)
ans = 0

n.times do |i|
    next if a[i] == a[i-1]

    list = a[i].prime_division.map do |k,v|
        Array.new(v+1) {|i| k ** i}
    end.inject([1], :product).map do |e|
        e.flatten.inject(:*)
    end

    if list.all? {|e| !x[e]}
        x[a[i]] = true
        ans += 1
    end
end

p ans