n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort_by{|e| -e}

b = [a.shift / 2]
(m-1).times do
    if a.empty?
        a = b
        b = [a.shift / 2]
    elsif a[0] > b[0]
        b << a.shift / 2
    else
        b << b.shift / 2
    end
end

puts (a + b).inject(:+)