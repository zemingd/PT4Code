n, m = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split.map(&:to_i)

m.times do
  l, r = gets.chomp.split.map(&:to_i)
  if (arr.size < n || arr.sort![-n] < r)
    arr.concat(Array.new(l, r))
  end
end
 
puts (arr.sort[-n, n].inject(:+))
