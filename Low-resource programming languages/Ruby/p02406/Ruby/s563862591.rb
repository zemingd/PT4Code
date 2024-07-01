num=gets.to_i
(1..num).each do |i|
  if num%3==0
    print " #{num}"
  elsif num%10==3
    print " #{num}"
  elsif if num/10%10==3
    print " #{num}"
  end
end
puts