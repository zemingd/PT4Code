n = gets.to_i

count = Hash.new(0)

(1..105).each do |x|
  (x..105).each do |y|
    (y..105).each do |z|
      tmp = x * x + y * y + z * z + x * y + y * z + z * x
      break if tmp > n
      count[tmp] += case
                    when x == y && y == z
                      1
                    when x == y || y == z || z == x
                      3
                    else
                      6
                    end
    end
  end
end

puts (1..n).map {count[_1]}