n = gets.to_i
ary = []
(1..n).each do |i|
  if (i % 3 == 0) || (i.to_s.include?('3'))
    ary << i
  end
end

puts " #{ary.join(' ')}"
