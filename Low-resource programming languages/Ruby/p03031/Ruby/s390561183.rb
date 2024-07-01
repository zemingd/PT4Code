n, m = gets.split.map(&:to_i)

$bulbs = []
cnt = 0
$res = 0
$set = []

def bulb_on?(bulb, condition, switches)
    n = 0
    bulb.each { |i| n += switches[i] }
    return (n % 2) == condition
end

def solve(switches, idx, conditions)
    [0, 1].each do |i|
        switches[idx] = i unless switches[idx].nil?
        unless $set.include?(switches)
            all_on = true
            $bulbs.each_with_index do |b, bi|
                unless bulb_on?(b, conditions[bi], switches)
                    all_on = false
                    break
                end
            end
            $res += 1 if all_on
            $set << switches.dup
        end
        solve(switches, idx + 1, conditions) unless idx >= switches.size
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
switches = [] if cnt == 0
conditions = gets.split.map(&:to_i)
solve(switches, 0, conditions)

puts $res