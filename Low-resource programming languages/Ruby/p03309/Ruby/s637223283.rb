n=gets.to_i
as=gets.split.map(&:to_i)
b=0
sum=0
i=0
as.each do |a|
  sum = sum+(a-(i+1)).abs
  i=i+1
end
puts sum
