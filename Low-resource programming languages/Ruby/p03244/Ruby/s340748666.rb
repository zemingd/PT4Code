n = gets.to_i
arr=gets.split(' ').map(&:to_i)

a=Hash.new(0)
b=Hash.new(0)
arr.each_with_index do |item,i|
  if i%2==0
    a[item] += 1 
  end
  if i%2==1
    b[item] += 1
  end
end

if a.size == 1 || b.size == 1
  puts a.values.first
else
  s=a.values.sort[1..-1].inject(:+).to_i
  t=b.values.sort[1..-1].inject(:+).to_i
  puts s+t
end
