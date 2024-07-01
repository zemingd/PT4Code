a = Array.new(5) { gets.to_i }
a.sort_by! { |x| (x - 1) % 10 }
s = 0
a.each_with_index do |x, i|
  if i > 0
    s += (1 + (x - 1) / 10) * 10
  else
    s += x
  end
end
puts s