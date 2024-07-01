n = gets
arr = gets.split.map(&:to_i)
arr2 = arr.uniq
puts arr.size == arr2.size ? "YES" : "NO"
