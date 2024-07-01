n = gets.chomp.to_i
as = gets.chomp.split(' ').map(&:to_i)

counts = {}
as.each do |a|
    counts[a] = (counts[a] || 0) + 1
end

base = 0
counts.each do |k, v|
    if v > 1
        base = base + v * (v - 1) / 2
    end
end

as.each do |a|
    c = counts[a]
    if c == 1
        puts base
    elsif c == 2
        puts base - 1
    else
        puts base - c + 1
    end
end
