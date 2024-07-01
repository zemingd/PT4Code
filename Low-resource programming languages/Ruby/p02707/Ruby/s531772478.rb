def main()
num=gets.to_i
j=gets.split
jj=j.map!(&:to_i)
i=1
j3=Array.new(num, 0)
while num>0
k=jj.select { |n| n == i }
j3[i-1]=k.length
num=num - k.length
jj.delete(k.length)
i=i+1
end
j3.each{|a|
p a 
}
end
main()
