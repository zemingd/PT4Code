n,k = gets.chomp.split.map(&:to_i)
array = n.times.map{gets.chomp.split.map(&:to_i)}.sort_by(&:first)
ans = 0
array.each do |a,b|
  if k - b <= 0
    ans = a
    break
  else
    k -= b
  end
end

puts ans