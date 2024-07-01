num = gets.to_i
student = gets.split.map(&:to_i)
 
arr = []
tmp = 1
 
student.each do |a|
    arr.insert(a - 1, tmp)
    tmp += 1
end
 
puts arr