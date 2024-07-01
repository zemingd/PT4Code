n, k = gets.chomp.split.map(&:to_i)
dislikes = gets.chomp.split
likes = ("0".."9").to_a - dislikes

max = likes.max
l = n.to_s.size
l += 1 if (max * l).to_i < n
candidate = nil
likes.repeated_permutation(l){|arr|
    candidate = arr.join.to_i
    break if candidate >= n
}
puts candidate
