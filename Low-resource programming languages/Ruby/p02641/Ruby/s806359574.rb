x, n = gets.strip.split(" ").map(&:to_i)
p = gets.strip.split(" ").map(&:to_i)

ans = nil
p.sort!

0.upto(101) do |i|
    if p.size > 0 && p.first == i 
        p.shift
        next
    end

    a = (x - i).abs
    if ans.nil? || (a < (x - ans).abs)
        ans = i
    end
end

puts ans
