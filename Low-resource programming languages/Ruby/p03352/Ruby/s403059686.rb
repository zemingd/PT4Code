x=gets.to_i
nums=1..1000
num=2..10
nums.each do |n|
num.each do |m|
    if x>=n**m
    a=0
      a=[1,n**m].max
    end
  end
end
puts a

