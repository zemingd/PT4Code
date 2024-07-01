n, m = gets.chomp.split("\s").map(&:to_i)

input = Array.new
m.times do
    input.push(gets.chomp.split("\s").map(&:to_i))
end

input.sort! do |a, b|
    a[1] <=> b[1]
end

result = 0
bridge = 0

input.each do |item|
    a, b = item

    # print "bridge: #{bridge}, a: #{a}, b: #{b}\n"
    if (bridge >= a && bridge < b) then
        # do nothing
    else
        bridge = b - 1
        result += 1
    end
end

p result
