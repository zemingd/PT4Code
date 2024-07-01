n = gets.to_i
a = gets.split.map(&:to_i)
x = a.map.with_index{|a,i| [a,i+1]}
x.sort!
student = []
x.each do |x|
    student << x[1]
end

puts student.join(" ")