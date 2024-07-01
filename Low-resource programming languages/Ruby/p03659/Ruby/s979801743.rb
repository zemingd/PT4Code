n  = STDIN.gets.to_i

a = STDIN.gets.split(" ").map do |s|
    s.to_i
end

sum = a[1..n-1].inject(:+)

diff = sum - a[0]
(1..n-2).to_a.each do |i|
    new_diff = diff - 2 * a[i]
    if (new_diff.abs > diff.abs) then
        break
    end
    diff = new_diff
end

STDOUT.puts diff.abs
