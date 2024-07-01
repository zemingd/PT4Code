a=gets.chomp.to_i
b=gets.chomp.split.map(&:to_i)
sum=b.inject(&:+)
av=(sum.to_f/a.to_f).round
c=0
sum2=0
b.each do |x|
  sum2+=(av-x)*(av-x)
end
puts sum2