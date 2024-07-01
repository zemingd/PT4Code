n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort_by{|e| -e}

b = []
m.times do
    if a == []
        a = b
        b = [a.shift / 2]
    elsif b == [] || a[0] > b[0]
        b << a.shift / 2
    else
        a << b.shift / 2
    end
end

puts (a + b).inject(:+)