n=gets.to_i
a=gets.chomp.split.map(&:to_i)
cnt=0
b=1
n.times do |i|
  if b>=a[i]
    cnt+=1
    b=a[i]
  end
end

puts cnt