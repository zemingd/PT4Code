N = gets.chomp.to_i
An = gets.chomp.split(' ').map(&:to_i)

calculated = N.times.map do |i|
    an = An[i]
    N.times.map { |o| i==o ? nil : an ^ An[o] }
end

index_count = {}
matched = (N.times.map do |i|
    an = An[i]
    checked = calculated.map.with_index do |c, o|
        next false if i == o
        c[0..i].include?(an) || c[i+1..N].include?(an)
    end
    usable_indexes = checked.map.with_index{ |v, o| v ? o : nil }.compact
    usable_indexes.each{ |i| index_count[i] = index_count.key?(i) ? index_count[i]+1 : 1 }
    {
        value: an,
        usable_indexes: usable_indexes
    }
end).sort_by { |v| v[:usable_indexes].size }

result = N.times.reduce(true) do |r, i|
    break false unless r 

    current = matched[i]
    break false if current[:usable_indexes].empty?

    x = (current[:usable_indexes].map do |x|
        [ x, index_count[x] ]
    end).sort_by { |v| v[1] }.last[0]
    break false if index_count[x] == 0
    index_count[x] = 0

    true
end

# p calculated
# p matched
# p result

puts result ? "Yes" : "No"
