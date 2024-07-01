x=gets.to_i
a=1
nums=1..1000
num=2..10
nums.each do |n|
num.each do |m|
    if x>=n**m
      a=[a,n**m].max
    end
  end
end
puts a
