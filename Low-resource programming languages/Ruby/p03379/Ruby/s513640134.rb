N = gets.to_i
xs = gets.split.map(&:to_i)
medians = xs.sort[N/2-1, 2]
if medians.uniq.count == 1
  N.times do
    puts medians[0]
  end
else
  xs.each do |x|
    if x <= medians[0]
      puts medians[1]
    else
      puts medians[0]
    end
  end
end
