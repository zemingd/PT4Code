n = gets.to_i
arr = gets.split.map(&:to_i)
ret = Array.new(arr.size)
arr.each_with_index do |a, i|
  ret[a - 1] = i + 1
end

puts ret.join("\s")
