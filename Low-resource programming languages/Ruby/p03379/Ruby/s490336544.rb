N = gets.to_i
xs = gets.split.map(&:to_i)
l, r = xs.sort[(N/2-1)..(N/2)]
xs.each do |x|
  if x <= l
    puts r
  else
    puts l
  end
end