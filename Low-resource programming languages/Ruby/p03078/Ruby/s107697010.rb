X, Y, Z, K = gets.chomp.split(" ").map(&:to_i)

cakes = Array.new(3) do
  gets.chomp.split(" ").map(&:to_i)
end

# 愚直
puts cakes
         .inject { |first, second| first.product(second) }
         .map(&:flatten)
         .map {|ary| ary.inject(&:+)}
         .sort.reverse.slice(0...K)
