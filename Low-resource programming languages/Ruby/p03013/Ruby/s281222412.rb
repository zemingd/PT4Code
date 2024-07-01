n, m = gets.split.map(&:to_i)
broken = Array.new(n, false)
m.times {
    a = gets.to_i
    broken[a - 1] = true
}

step = []
if !broken[0] then
    step[0] = 1
else
    step[0] = 0
end

if n == 1 then
    puts step[0]
    exit
end

if !broken[1] then
    step[1] = step[0] + 1
else
    step[1] = step[0]
end

2.upto(n - 1).each {|i|
    if !broken[i] then
        step[i] = step[i - 1] + step[i - 2]
        step[i] %= 1000000007
    else
        step[i] = 0
    end
}

puts step.last
