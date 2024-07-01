n = gets.to_i
num = gets.strip.split.map(&:to_i)
#２で割れるだけ割る
sum = 0
while num.select{|x| x.even?}.size>0 do
  num.select!{|x| x.even?}
  for i in 0..(num.size-1)
    num[i] = num[i]/2
  end
  sum += num.size
end
puts sum