X, Y, Z, K = gets.chomp.split(" ").map(&:to_i)

cakes = Array.new(3) do
  gets.chomp.split(" ").map(&:to_i)
end

max = cakes[0].max + cakes[1].max + cakes[2].max

diffs_1 = cakes[0].map{|i| cakes[0].max - i}
diffs_2 = cakes[1].map{|i| cakes[1].max - i}
diffs_3 = cakes[2].map{|i| cakes[2].max - i}

puts diffs_1
         .product(diffs_2)
         .map {|ary| ary.inject(&:+)}
         .product(diffs_3)
         .map(&:flatten)
         .map {|ary| ary.inject(&:+)}
         .sort
         .slice(0...K)
         .map {|diff| max - diff}
