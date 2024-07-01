n, k = gets.split(" ").map(&:to_i)
dis = gets.chomp.split.map(&:to_i)
likes = (0..9).to_a - dis

max = likes.max
l = n.to_s.size
l += 1 if (max * l).to_i < n
c = nil
likes.repeated_permutation(l) do |ary|
  c = ary.join.to_i
  break if n <= c
end
puts c