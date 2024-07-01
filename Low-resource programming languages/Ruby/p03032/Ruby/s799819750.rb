n, k = gets.split(' ').map(&:to_i)
v = gets.split(' ').map(&:to_i)

q = [k, n].min
answer = (0..q).map do |j|
    (0..j).map do |shift|
        stone = v.slice(0, j - shift) + v.slice(n - shift, shift)
        minus_stone, plus_stone = stone.partition {|i| i < 0}
        (minus_stone.sort.drop(k - j) + plus_stone).reduce(0, :+)
    end
end.flatten(1).max

puts answer
