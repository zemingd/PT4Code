A,B = gets.split.map(&:to_i)
a_min = (A / 0.08).ceil
b_min = (B / 0.1).ceil
a_max = ((A+1) / 0.08).floor
b_max = ((B+1) / 0.1).floor

a_ary = (a_min..a_max).to_a
b_ary = (b_min..b_max).to_a

b_ary.each do |b|
  if a_ary.include?(b)
    puts b
    exit
  end
end
a_ary.each do |a|
  if b_ary.include?(a)
    puts a
    exit
  end
end

puts "-1"