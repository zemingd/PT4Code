gets
odd_negatives = false
min_abs = 10000000000
sum = 0
gets.split.map(&:to_i).each{|n|
    if n < 0
        odd_negatives = !odd_negatives
    end

    ab = n.abs
    sum += ab
    if min_abs > ab
        min_abs = ab
    end
}

if odd_negatives
    sum -= min_abs * 2
end

puts sum
