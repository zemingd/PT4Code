n =gets.to_i
arr = gets.split(" ").map(&:to_i)
arr2 = Array.new
b = 1000000000
for i in 1..n do
    arr2[i-1] = arr[i-1]-i
end
arr3 = arr2.sort.uniq

# p arr
# p arr2
# p arr3
if arr3.length == 1
    puts 0
    exit
end
    

for j in 0..arr3.length-1 do
arr4 = arr2.map {|item| item - arr3[j] }
a = arr4.inject{|result, item| result + item.abs}
if a < b 
    b = a
else
    break
end
end
puts b