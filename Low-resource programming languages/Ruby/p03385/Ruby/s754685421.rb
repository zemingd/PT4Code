S = gets.chomp
ret = false
['a', 'b', 'c'].permutation(3) do |a|
    ret = true if a.join == S
end
puts ret ? 'Yes' : 'No'