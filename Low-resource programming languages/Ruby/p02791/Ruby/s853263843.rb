n=gets.to_i
arr=[]
min=1000000
count = 0
arr=gets.chomp.split(" ").map(&:to_i)
arr.each do |x|
  if min > x
  	min = x
  	count = count + 1
  end
end
print("#{count}\n")