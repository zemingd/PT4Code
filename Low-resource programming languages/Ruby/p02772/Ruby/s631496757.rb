n = gets.to_i
ary = gets.split.map(&:to_i)
sum = 0
count = 0
ary.each do |i|
  if i.even?
    sum+=1
    if i%3==0 || i%5==0
      count+=1
    end
  end
end
puts sum==count ? "APPROVED": "DENIED"