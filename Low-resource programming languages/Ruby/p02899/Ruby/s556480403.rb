num = gets.to_i
student = gets.split.map(&:to_i)

tmp = 1

num.times do
    print student.index(tmp) + 1
    print ' '
    tmp += 1
end
