n, m = gets.split.map(&:to_i)
ab = m.times.map {gets.split.map(&:to_i)}

ab.sort_by!{|a,b| a}

x = ans = 0
ab.each do |a, b|
    if x > a
        x = [x, b].min
    else
        x = b
        ans += 1
    end
end

p ans