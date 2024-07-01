_,t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = []

a.each do |n|
    temp = n
    sum = 0
  while n > 0 do
    sum += n
    n -= 1
  end
  x << sum/temp.to_f
end

puts x.max(t).inject(:+)
