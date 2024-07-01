s = gets.chomp
q = gets.chomp.to_i
qs = q.times.map { gets.chomp.split(' ') }

qs.each do |t, f, c|
    if t == '1'
        s = s.reverse
        next
    end

    if f == '1'
        s = c + s
        next
    end

    s = s + c
end

puts s
