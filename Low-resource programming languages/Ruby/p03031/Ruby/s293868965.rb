
        solve(switches, idx + 1, conditions)
    end
end

candidates = {}

m.times do |i|
    inp = gets.split.map(&:to_i)
    inp.shift
    $bulbs.push(inp.map { |i| i-1 })
end

$bulbs.each { |i| cnt = [cnt, i.max].max }
switches = Array.new(cnt + 1, 0)

conditions = gets.split.map(&:to_i)
solve(switches, 0, conditions)

puts $res