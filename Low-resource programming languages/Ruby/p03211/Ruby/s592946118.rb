s = gets.chomp
delta = 1<<30

s.scan(/(\d\d\d)/).each do |a|
  if (753-a[0].to_i).abs < delta
    delta = (753-a[0].to_i).abs
  end
end

p delta