N = gets.to_i
array=gets.chomp.split(" ").map(&:to_i)

ret = 0
array.combination(2) do |e|
    ret += e[0] * e[1]
end
puts ret