num=gets.to_i
(1..num).each do |i|
  if i%3==0
    print " #{i}"
  elsif i%10==3
    print " #{i}"
  elsif if i/10%10==3
    print " #{i}"
  end
end
puts