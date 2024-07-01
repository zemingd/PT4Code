n = gets.to_i
as = gets.split.map(&:to_i)
hash = Hash.new
as.each_with_index do |a, i|
  i += 1
  hash[i.to_s] = a
end
puts hash.sort_by { |k, v| v }.map { |a, b| a }.join(" ")