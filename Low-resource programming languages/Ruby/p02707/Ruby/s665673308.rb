n = gets.to_i
ary = Array.new(n, 0)
gets.strip.split.each do |a|
  ary[a.to_i - 1] += 1
end
ary.each { |i| p i }
