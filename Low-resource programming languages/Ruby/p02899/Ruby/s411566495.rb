num = gets.to_i
student = gets.split.map(&:to_i)

arr = Array.new(num, 0)
tmp = 1

student.each do |a|
    arr.insert(a - 1, tmp)
    arr.delete_at(a)
    tmp += 1
end

arr.each do |a|
    print a
    print ' '
end