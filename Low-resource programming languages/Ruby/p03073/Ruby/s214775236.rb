even = [0, 0]
odd = [0, 0]
gets.chomp.chars.map(&:to_i).each_with_index{|c, i|
    if i % 2 == 0
        even
    else
        odd
    end[c] += 1
}
puts [even, odd.reverse].transpose.map{|it| it.inject(:+)}.min
