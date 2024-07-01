arr=[]
a,b=gets.chomp.split(" ").map(&:to_i)
arr=gets.chomp.split(" ").map(&:to_i)
if a-b > 0
  arr = arr.sort.slice(0, a-b)
  print("#{arr.inject(:+)}\n")
else
  print("0\n")
end