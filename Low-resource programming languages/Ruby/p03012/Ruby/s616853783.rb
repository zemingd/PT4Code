n = gets.chop.to_i
array=[]
i=1
numbers = gets.strip.split.map(&:to_i)
(n/2+1).times do
array << (numbers[0,i].inject(:+)-numbers[i..-1].inject(:+)).abs
  i+=1
end
puts array.min