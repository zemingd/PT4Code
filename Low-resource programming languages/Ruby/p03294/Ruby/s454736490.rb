attrs = Array.new
while line = $stdin.gets
    attrs << line.chomp.split.map{|v| v.to_i }
end

ary = attrs[1].sort

memo = 0
(0..ary[-1]).each do |m|
    sum = 0
    for i in 0..(ary.length-1) do
        sum += m % ary[i]
    end

    if sum > memo then
        puts memo = sum
    end
end

puts memo